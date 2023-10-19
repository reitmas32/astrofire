import 'package:astofire/ui/molecules/resource.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({
    super.key,
  });

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 25).add(
        EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width >
                  MediaQuery.of(context).size.height
              ? MediaQuery.of(context).size.width / 12
              : 0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Data Resource',
              style: GoogleFonts.bebasNeue(
                  fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResourceWidget(
                img:
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/satelite.gif',
                lable: 'NASA Satellite',
              ),
              ResourceWidget(
                img:
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/blazer.gif',
                lable: 'BLAZE Sensors',
              ),
              ResourceWidget(
                img:
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/app_mobile.gif',
                lable: 'APP Movile',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'MANAGMENT FIRE',
              style: GoogleFonts.bebasNeue(
                  fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ResourceWidget(
                img:
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/monitoring.gif',
                lable: 'NASA Satellite',
              ),
              ResourceWidget(
                img:
                    'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/drone.gif',
                lable: 'BLAZE Sensors',
              ),
            ],
          )
        ],
      ),
    );
  }
}