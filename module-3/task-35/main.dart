import 'package:flutter/material.dart';

class Task35PulsingButton extends StatefulWidget {
  const Task35PulsingButton({super.key});

  @override
  State<Task35PulsingButton> createState() => _Task35PulsingButtonState();
}

class _Task35PulsingButtonState extends State<Task35PulsingButton> with SingleTickerProviderStateMixin {
  bool isPulsing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 35: Pulsing Button")),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1.0, end: isPulsing ? 1.2 : 1.0),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          builder: (context, double scale, child) {
            return Transform.scale(
              scale: scale,
              child: ElevatedButton(
                onPressed: () => setState(() => isPulsing = !isPulsing),
                child: const Text("Pulse"),
              ),
            );
          },
        ),
      ),
    );
  }
}
