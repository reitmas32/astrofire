import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.height,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Container(
                  color: Theme.of(context).colorScheme.onSecondary,
                  width: 10,
                  height: 200,
                ),
              ),
              Expanded(
                child: Text(
                  'COMMUNITY AERIAL FIRE RESPONSE',
                  style: GoogleFonts.outfit(
                    fontSize: 80,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}