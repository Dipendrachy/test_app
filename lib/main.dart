import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'First number',
                hintText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'First number',
                hintText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text('Add')),
            ),
            const SizedBox(height: 8),
            const Text('Result:0')
          ],
        ),
      ),
    );
  }
}