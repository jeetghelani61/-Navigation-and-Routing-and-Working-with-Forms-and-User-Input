import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart'; // Make sure path matches your project

class Task38Cart extends StatelessWidget {
  const Task38Cart({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample products with name and price
    final products = [
      {'name': 'Apple', 'price': 30.0},
      {'name': 'Banana', 'price': 20.0},
      {'name': 'Orange', 'price': 25.0},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Task 38: Shopping Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product['name'].toString()),
                  subtitle: Text("Price: \$${product['price']}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.green),
                        onPressed: () => context.read<CartProvider>().addItem(product['price'] as double),
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.red),
                        onPressed: () => context.read<CartProvider>().removeItem(product['price'] as double),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Consumer<CartProvider>(
              builder: (context, cart, child) => Text(
                "Total: \$${cart.total.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
