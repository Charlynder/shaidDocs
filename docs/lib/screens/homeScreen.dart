import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// HomeScreen is the landing screen of the application.
// All the other screens are navigated from this screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Screen!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/editor');
              },
              child: const Text('Go to Editor Screen'),
            ),
          ],
        ),
      ),
    );
  }
}