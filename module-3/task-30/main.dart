import 'package:flutter/material.dart';

class Task30Profile extends StatelessWidget {
  const Task30Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 30: Profile Page")),
      body: Stack(
        children: [
          Container(
            color: Colors.blue[50],
            height: 250,
            width: double.infinity,
          ),
          const Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://picsum.photos/100"),
            ),
          ),
          const Positioned(
            top: 160,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text("John Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Flutter Developer", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
