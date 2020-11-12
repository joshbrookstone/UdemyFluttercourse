import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import "blocs/provider.dart";

class App extends StatelessWidget {
  build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me in',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
