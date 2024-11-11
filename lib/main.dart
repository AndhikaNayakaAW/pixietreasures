import 'package:flutter/material.dart';
import 'screens/add_item_form.dart'; // Import the form page
import 'widgets/drawer.dart';        // Import the drawer

void main() {
  runApp(PixieTreasuresApp());
}

class PixieTreasuresApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PixieTreasures',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ButtonData> buttons = [
    ButtonData("View Product List", Icons.list, Colors.blue),
    ButtonData("Add Product", Icons.add, Colors.green),
    ButtonData("Logout", Icons.logout, Colors.red),
  ];

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PixieTreasures'),
      ),
      drawer: const AppDrawer(), // Add the drawer here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttons.map((button) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: button.color,
                ),
                onPressed: () {
                  if (button.text == "Add Product") {
                    // Navigate to the AddItemFormPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddItemFormPage()),
                    );
                  } else {
                    _showSnackbar(
                        context, "You have pressed the ${button.text} button");
                  }
                },
                icon: Icon(button.icon),
                label: Text(button.text),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ButtonData {
  final String text;
  final IconData icon;
  final Color color;

  ButtonData(this.text, this.icon, this.color);
}
