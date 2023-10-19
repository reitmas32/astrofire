import 'package:astofire/ui/atoms/section_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(248, 30, 30, 30),
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 25).add(
        EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width >
                  MediaQuery.of(context).size.height
              ? MediaQuery.of(context).size.width / 12
              : 0,
        ),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Image.network(
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/icon.png',
                    height: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    'AstroFire',
                    style: GoogleFonts.outfit(
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionButton(
                      lable: 'About',
                      index: 1,
                    ),
                    SectionButton(
                      lable: 'Project',
                      index: 2,
                    ),
                    SectionButton(
                      lable: 'Team',
                      index: 3,
                    ),
                    SectionButton(
                      lable: 'Contact',
                      index: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}