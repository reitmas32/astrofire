import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResourceWidget extends StatelessWidget {
  const ResourceWidget({
    super.key,
    required this.img,
    required this.lable,
  });

  final String img;
  final String lable;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.network(
            img,
            height: size.width < 1000 ? 80 : null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Text(
            lable,
            style: GoogleFonts.montserrat(
              fontSize: size.width > 1000 ? 25 : 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
