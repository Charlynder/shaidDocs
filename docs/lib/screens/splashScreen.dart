import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// LoadingScreen is the first screen that is displayed when the app is launched.
// It waits for 3 seconds before navigating to the HomeScreen.
// The HomeScreen is displayed after the LoadingScreen.
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isHomeScreenReady = false;

  @override
  void initState() {
    super.initState();
    _loadHomeScreen();
  }

  _loadHomeScreen() async {
    // Simulate a delay for loading home screen content
    await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isHomeScreenReady = true;
      });
    });

    // Ensure the splash screen shows for at least 2 seconds
    await Future.delayed(const Duration(seconds: 1), () {});

    if (_isHomeScreenReady) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}