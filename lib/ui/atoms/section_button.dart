import 'package:astofire/ui/providers/scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionButton extends ConsumerStatefulWidget {
  const SectionButton({
    super.key,
    required this.lable,
    this.index = 0,
  });

  final String lable;
  final int index;

  @override
  ConsumerState<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends ConsumerState<SectionButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final scrollController = ref.watch(scrollControllerProvider);

    return MouseRegion(
      child: GestureDetector(
        onTap: () {
          if(Scaffold.of(context).isEndDrawerOpen){
            Navigator.pop(context);
          }
          scrollController.scrollTo(
            index: widget.index,
            duration: Duration(milliseconds: 500),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              style: GoogleFonts.montserrat(
                fontSize: isHover ? 22 : 20,
                color: isHover
                    ? Theme.of(context).colorScheme.onSecondary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              duration: const Duration(
                milliseconds: 200,
              ),
              child: Text(
                widget.lable,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2.0,
              width: isHover ? 100.0 : 0.0, // Cambia el ancho al hacer hover
              color: Theme.of(context)
                  .colorScheme
                  .onSecondary, // Cambia el color como desees
            ),
          ],
        ),
      ),
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
    );
  }
}
