import 'package:astofire/ui/atoms/section_button.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}
