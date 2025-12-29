import 'package:flutter/material.dart';

class Task33FadeInImage extends StatelessWidget {
  const Task33FadeInImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 33: FadeIn Image")),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/sample.jpg', // local placeholder
          image: 'https://picsum.photos/300/200',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
