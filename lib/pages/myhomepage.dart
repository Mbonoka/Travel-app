import 'package:flutter/material.dart';
import 'homepage_destinations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Safiri App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.yellow, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Filter Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.temple_buddhist),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DestinationList(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.beach_access),
                  onPressed: () {},
                ),

                IconButton(
                  icon: const Icon(Icons.pool_outlined),
                  onPressed: () {},
                ),
                IconButton(icon: const Icon(Icons.sunny), onPressed: () {}),
                IconButton(icon: const Icon(Icons.hotel),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
