import 'package:astofire/ui/molecules/custom_appbar.dart';
import 'package:astofire/ui/molecules/fotter.dart';
import 'package:astofire/ui/providers/scroll_controller.dart';
import 'package:astofire/ui/views/about.dart';
import 'package:astofire/ui/views/contact.dart';
import 'package:astofire/ui/views/custom_drawer.dart';
import 'package:astofire/ui/views/home_body.dart';
import 'package:astofire/ui/views/project.dart';
import 'package:astofire/ui/views/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final elements = [
    const SizedBox(
      height: 1000,
      child: HomeBody(),
    ),
    const SizedBox(
      height: 1000,
      child: AboutView(),
    ),
    const ProjectView(),
    const SizedBox(
      height: 100,
    ),
    const TeamView(),
    const SizedBox(
      height: 300,
    ),
    const ContactView(),
    const SizedBox(
      height: 250,
    ),
    const CustomFotter(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 46, 46, 46),
      endDrawer: size.width < 1000 ? const CustomDrawer() : null,
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(248, 30, 30, 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ScrollablePositionedList.builder(
              itemScrollController: scrollController,
              shrinkWrap: true,
              itemCount: elements.length,
              itemBuilder: (BuildContext context, int index) {
                return elements[index];
              }, // Hace que el ListView interior se ajuste a su contenido
            ),
          ),
          const CustomAppBar()
        ],
      ),
    );
  }
}
