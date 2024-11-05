import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/firebase/loginservices.dart/login.dart';
import 'package:tata_neu/shopping/reviewscreen.dart';

final authStateProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

final userTypeProvider = Provider<bool>((ref) {
  final user = ref.watch(authStateProvider).value;
  return user?.uid != null;
});

final profileImageProvider =
    StateNotifierProvider<ProfileImageNotifier, String?>((ref) {
  final authState = ref.watch(authStateProvider);
  return ProfileImageNotifier(authState.value);
});

class ProfileImageNotifier extends StateNotifier<String?> {
  final User? currentUser;

  ProfileImageNotifier(this.currentUser) : super(null) {
    if (currentUser?.uid != null) {
      loadProfileImage();
    }
  }

  Future<void> loadProfileImage() async {
    if (currentUser?.uid == null) {
      state = null;
      return;
    }

    try {
      String downloadUrl = await FirebaseStorage.instance
          .ref('profileimage/${currentUser!.uid}.png')
          .getDownloadURL();
      state = downloadUrl;
    } catch (e) {
      print('Error loading image: $e');
      state = null;
    }
  }

  Future<void> uploadProfileImage() async {
    if (currentUser?.uid == null) return;

    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File file = File(image.path);
      try {
        await FirebaseStorage.instance
            .ref('profileimage/${currentUser!.uid}.png')
            .putFile(file);
        loadProfileImage();
      } catch (e) {}
    }
  }
}

final authControllerProvider = Provider((ref) => AuthController(ref));

class AuthController {
  final Ref ref;

  AuthController(this.ref);

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    ref.invalidate(profileImageProvider);
    Get.offAll(() => LoginPage());
  }
}

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final imageUrl = ref.watch(profileImageProvider);
    final isPremiumUser = ref.watch(userTypeProvider);

    return authState.when(
      data: (user) {
        return Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 245, 214, 193),
                    Color.fromARGB(255, 240, 220, 202),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ref
                                .read(profileImageProvider.notifier)
                                .uploadProfileImage();
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: imageUrl != null && isPremiumUser
                                ? NetworkImage(imageUrl)
                                : null,
                            backgroundColor: Colors.grey.shade200,
                            child: imageUrl == null || !isPremiumUser
                                ? Icon(Icons.person,
                                    size: 50, color: Colors.grey.shade400)
                                : null,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                isPremiumUser
                                    ? (user?.displayName ?? 'User')
                                    : 'Free User',
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                isPremiumUser
                                    ? (user?.email ?? 'No email')
                                    : 'Upgrade to Premium',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: isPremiumUser
                                      ? Colors.black
                                      : const Color.fromARGB(
                                          255, 212, 120, 228),
                                  fontWeight: isPremiumUser
                                      ? FontWeight.normal
                                      : FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!isPremiumUser)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 223, 165, 233),
                        ),
                        child: const Text('Login to Use all services'),
                      ),
                    ),
                  const SizedBox(height: 30),
                  _buildSection("ACCOUNT", [
                    _buildRow(Icons.person, 'Profile'),
                    _buildRow(Icons.maps_ugc, 'Address'),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Reviewscreen(),
                            ),
                          );
                        },
                        child: _buildRow(Icons.message_outlined, 'My reviews')),
                  ]),
                  const SizedBox(height: 20),
                  _buildSection("FINANCE", [
                    _buildRow(Icons.card_giftcard, 'My Cards'),
                    _buildRow(Icons.currency_bitcoin, 'My Loans'),
                    _buildRow(Icons.shield, 'My Insurance'),
                    _buildRow(Icons.shield_outlined, 'My Bills'),
                  ]),
                  const SizedBox(height: 20),
                  _buildSection("SETTING", [
                    _buildRow(
                        Icons.lock_clock_outlined, 'Security and privacy'),
                    _buildRow(Icons.safety_check, 'Communication preferences'),
                  ]),
                  const SizedBox(height: 20),
                  _buildSection("HELP AND MORE", [
                    _buildRow(Icons.help, 'Help'),
                    _buildRow(Icons.front_hand, 'Rate our App'),
                    _buildRow(Icons.balance_outlined, 'Legal'),
                    _buildRow(Icons.tag_faces_outlined, 'Offer T&Cs'),
                  ]),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => ref.read(authControllerProvider).signOut(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 222, 109, 109),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildSection(String title, List<Widget> items) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, 10)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ...items,
        ],
      ),
    );
  }

  Widget _buildRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.grey[700]),
          ),
          const SizedBox(width: 20),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
