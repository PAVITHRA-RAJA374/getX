import 'package:flutter/material.dart';

class unknownRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text(
          "Unknown Route - Route not found",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
    );
  }
}
