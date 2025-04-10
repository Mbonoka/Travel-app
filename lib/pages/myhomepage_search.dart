import 'package:flutter/material.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/Vector.png'),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/beach.png'),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/swimming.png'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/island.png'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/building.png'),
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
