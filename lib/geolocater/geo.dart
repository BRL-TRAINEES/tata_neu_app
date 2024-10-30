import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tata_neu/geolocater/geoproviders.dart';

class LocationScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(locationProvider);
    final addressAsyncValue = ref.watch(addressProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Geolocation with Riverpod')),
      body: Center(
        child: locationAsyncValue.when(
          data: (position) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                addressAsyncValue.when(
                  data: (placemarks) {
                    if (placemarks.isNotEmpty) {
                      return Text(
                        'Address: ${placemarks.first.street}, ${placemarks.first.locality}, ${placemarks.first.country}',
                        style: TextStyle(fontSize: 16),
                      );
                    } else {
                      return Text('No address found');
                    }
                  },
                  loading: () => CircularProgressIndicator(),
                  error: (err, stack) => Text(
                    'Address Error: $err',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
          loading: () => CircularProgressIndicator(),
          error: (err, stack) => Text(
            'Location Error: $err',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}