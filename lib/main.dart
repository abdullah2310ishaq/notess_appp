import 'package:flutter/material.dart';
import 'package:note_app/screens/home.dart';
import 'package:note_app/screens/loading.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Future<bool> loadData() async {
    // Simulate loading data
    await Future.delayed(const Duration(seconds: 5));
    return true; // Change this condition based on your actual loading completion
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading(); // Still loading, show loading screen
          } else {
            if (snapshot.hasError) {
              // Handle error
              return const Scaffold(
                body: Center(child: Text('Error loading data')),
              );
            } else if (snapshot.data == true) {
              return const HomeScreen(); // Loading completed, switch to HomeScreen
            } else {
              return const Loading(); // Loading not completed, show loading screen
            }
          }
        },
      ),
    );
  }
}
