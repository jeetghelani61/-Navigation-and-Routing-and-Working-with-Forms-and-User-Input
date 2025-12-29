import 'package:flutter/material.dart';

class Task32CustomButton extends StatelessWidget {
  const Task32CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 32: Custom Button")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("Click Me", style: TextStyle(color: Colors.white)),
              ),
            ),
            Positioned(
              top: -5,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.thumb_up, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
