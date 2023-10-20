import 'package:astofire/services/stataic_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: size.width > 600 ? 80 : 30),
        child: Center(
          child: Text(
            StaticData.about,
            textAlign: TextAlign.justify,
            style: GoogleFonts.outfit(
              fontSize: size.width > 600 ? 30 : 20,
            ),
          ),
        ),
      ),
    );
  }
}