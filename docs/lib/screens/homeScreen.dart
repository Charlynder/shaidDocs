import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// HomeScreen is the landing screen of the application.
// All the other screens are navigated from this screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250, // Set the width of the side column
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Editor'),
                  onTap: () {
                    Navigator.pushNamed(context, '/editor');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
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
          ),
        ],
      ),
    );
  }
}