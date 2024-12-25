import 'package:digital_art_gallery_app/home.dart'; // Import home screen
import 'package:flutter/material.dart';

class ShowFirstScreen extends StatelessWidget {
  const ShowFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use Future.delayed to wait for 2 seconds and then navigate to the next screen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const home()), // Navigate to home screen
      );
    });

    return Scaffold(
      // Add a gradient background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(seconds: 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(5, 5),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/art.jpg',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 450,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
