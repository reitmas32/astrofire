import 'package:astofire/models/person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonView extends StatelessWidget {
  const PersonView({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            person.picture,
          ),
          Text(
            person.name,
            style: GoogleFonts.bebasNeue(
              fontSize: 40,
            ),
          ),
          Text(
            person.profesion,
            style: GoogleFonts.montserrat(),
          ),
        ],
      ),
    );
  }
}