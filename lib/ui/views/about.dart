import 'package:astofire/services/stataic_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.height,
        child: Center(
          child: Text(
            StaticData.about,
            style: GoogleFonts.outfit(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}