import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class Task39Theme extends StatelessWidget {
  const Task39Theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 39: Theme Switcher"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeProvider>().toggleTheme(),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Current Theme: ${context.watch<ThemeProvider>().isDark ? "Dark" : "Light"}",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
