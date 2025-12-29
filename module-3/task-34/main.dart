import 'package:flutter/material.dart';

class Task34AnimatedContainer extends StatefulWidget {
  const Task34AnimatedContainer({super.key});

  @override
  State<Task34AnimatedContainer> createState() => _Task34AnimatedContainerState();
}

class _Task34AnimatedContainerState extends State<Task34AnimatedContainer> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 34: Expand/Collapse")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => setState(() => expanded = !expanded),
            child: const Text("Toggle Content"),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: double.infinity,
            height: expanded ? 200 : 0,
            color: Colors.blue[200],
            child: expanded
                ? const Center(child: Text("Here is some content!", style: TextStyle(fontSize: 18)))
                : null,
          ),
        ],
      ),
    );
  }
}
