import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:pixietreasures/models/product_entry.dart'; // Adjusted import path
import 'package:pixietreasures/screens/product_detail.dart'; // Adjusted import path
import 'package:pixietreasures/widgets/left_drawer.dart'; // Adjusted import path

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
  try {
    // Fetch product data from the server
    final response = await request.get('http://localhost:8000/json/');

    // Check if the response is empty
    if (response.isEmpty) {
      throw Exception("No data returned from the server.");
    }

    // Convert response to List<ProductEntry>
    List<ProductEntry> listProduct = (response as List)
        .map((item) => ProductEntry.fromJson(item as Map<String, dynamic>))
        .toList();

    return listProduct;
  } catch (error) {
    // Log the error
    print("Error fetching products: $error");
    throw Exception("Failed to load products.");
  }
}


  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot<List<ProductEntry>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show loading indicator while fetching data
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Show error message if fetching data failed
            return Center(
              child: Text(
                "Error: ${snapshot.error}",
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Show message if there are no products
            return const Center(
              child: Text(
                'There is no product data in PixieTreasures.',
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
            );
          } else {
            // Display the list of products
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                var product = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to product details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail(product: product),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.fields.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Price: \$${product.fields.price}"),
                        const SizedBox(height: 10),
                        Text("Rating: ${product.fields.rating}"),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
