import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigate'),
      ),
      body: Center(
        child: Row(
          children: [
            const SizedBox(height: 30, width: 50),
            SizedBox(
              child: ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/Screen1');
                },
                child: const Text('Make Addition'),
              ),
            ),
            const SizedBox(height: 30, width: 50),
            SizedBox(
              child: ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/Screen2');
                },
                child: const Text('Find Simple Interest'),
              ),
            ),
            
          ],
        )
        
      ),
    );
  }
}