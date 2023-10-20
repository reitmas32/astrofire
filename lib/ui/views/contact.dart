import 'package:astofire/ui/molecules/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/hotmail.dart';

class ContactView extends StatelessWidget {
  ContactView({
    super.key,
  });

  void _sendEmail() async {
    final smtpServer = hotmail('rafa.zamora.rals@hotmail.com',
        '*******'); // Configura tu correo y contraseña

    final message = Message()
      ..from = Address('rafa.zamora.rals@hotmail.com', 'Unihachs')
      ..subject = 'AstroFire Project'
      ..text = '''
Email: ${emailController.text},
Content: ${contentController.text}
''';

    try {
      final sendReport = await send(message, smtpServer);
      print('Mensaje enviado: ${sendReport.mail.from}');
    } on MailerException catch (e) {
      print('Error al enviar el mensaje: $e');
    }
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: Column(
          children: [
            CustomTextField(
              lable: 'Email',
              controller: emailController,
            ),
            CustomTextField(
              lable: 'Content',
              minLines: 5,
              maxLines: 10,
              controller: contentController,
            ),
            InkWell(
              onTap: () {
                _sendEmail();
              },
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
