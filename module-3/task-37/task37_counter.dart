import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Task 37: Counter App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Counter Value:"),
              Consumer<CounterProvider>(
                builder: (_, counter, __) => Text("${counter.count}", style: const TextStyle(fontSize: 36)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => context.read<CounterProvider>().increment(),
                      child: const Text("+")),
                  const SizedBox(width: 16),
                  ElevatedButton(
                      onPressed: () => context.read<CounterProvider>().decrement(),
                      child: const Text("-")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
