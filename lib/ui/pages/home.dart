import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 46, 46, 46),

      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(100, 46, 46, 46),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Color.fromARGB(249, 46, 46, 46),
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
