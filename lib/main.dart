import 'package:flutter/material.dart';
import 'package:pixietreasures/screens/menu.dart';
import 'package:pixietreasures/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'PixieTreasures',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lightBlue,
          ).copyWith(secondary: Colors.lightBlue[400]),
        ),
        home: LoginPage(), // Changed the home page to LoginPage
      ),
    );
  }
}
