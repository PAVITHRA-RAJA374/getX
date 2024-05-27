import 'package:flutter/material.dart';

class nextPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Center(
        child: Text(
          "This is the next page",
          style: TextStyle(color: Colors.blue, fontSize: 30),
          //Text(
          // "${Get.parameters['some value']}",
          // style: TextStyle(color: Colors.blue,fontSize: 20),
          // )
        ),
      ),
    );
  }
}
