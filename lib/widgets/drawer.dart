import 'package:flutter/material.dart';
import '../main.dart';                // For MyHomePage
import '../screens/add_item_form.dart'; // For AddItemFormPage

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: const Text(
              'PixieTreasures',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // Home Option
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          // Add Item Option
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Item'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddItemFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
