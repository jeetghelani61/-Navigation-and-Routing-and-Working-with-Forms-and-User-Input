import 'package:flutter/material.dart';

class Task29Overlay extends StatelessWidget {
  const Task29Overlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 29: Overlay Effect")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              "https://picsum.photos/300/200",
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: 300,
              height: 200,
              color: Colors.black.withOpacity(0.4),
            ),
            const Text(
              "Overlay Text",
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
