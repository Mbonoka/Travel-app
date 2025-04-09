import 'package:flutter/material.dart';
import 'homepage_destinations.dart'; // This will be added by Part 2B

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
                IconButton(icon: const Icon(Icons.hotel), onPressed: () {}),
                IconButton(
                  icon: const Icon(Icons.local_activity),
                  onPressed: () {},
                ),
                IconButton(icon: const Icon(Icons.pool), onPressed: () {}),
                IconButton(icon: const Icon(Icons.wifi), onPressed: () {}),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Expanded(child: DestinationList()),
          ],
        ),
      ),
    );
  }
}
