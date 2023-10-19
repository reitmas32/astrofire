import 'package:astofire/services/stataic_data.dart';
import 'package:astofire/ui/molecules/person.dart';
import 'package:flutter/material.dart';

class TeamView extends StatelessWidget {
  const TeamView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 25).add(
        EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width - 250 >
                  MediaQuery.of(context).size.height
              ? MediaQuery.of(context).size.width / 12
              : 0,
        ),
      ),
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.spaceEvenly,
        children: List.generate(
          StaticData.team.length,
          (index) => PersonView(
            person: StaticData.team[index],
          ),
        ),
      ),
    );
  }
}
