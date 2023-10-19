import 'package:flutter/material.dart';

class CustomFotter extends StatelessWidget {
  const CustomFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 49, 48, 45),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: const Center(
        child: Text(
          'AstroFire ©2023',
        ),
      ),
    );
  }
}
