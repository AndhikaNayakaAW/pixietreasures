import 'package:flutter/material.dart';
import 'package:pixietreasures/models/product_entry.dart'; // Adjusted import path

class ProductDetail extends StatelessWidget {
  final ProductEntry product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Price: \$${product.fields.price}"),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 10),
            Text("Rating: ${product.fields.rating}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              ),
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
