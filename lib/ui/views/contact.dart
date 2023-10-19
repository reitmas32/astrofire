import 'package:astofire/ui/molecules/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: Column(
          children: [
            const CustomTextField(
              lable: 'Email',
            ),
            const CustomTextField(
              lable: 'Content',
              minLines: 5,
              maxLines: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                child: Text(
                  'Send Mail',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

