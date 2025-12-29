import 'package:flutter/material.dart';

class Task31CardFAB extends StatelessWidget {
  const Task31CardFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 31: Card with FAB")),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
            ),
            child: const Text("Card Content Here"),
          ),
          const Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
