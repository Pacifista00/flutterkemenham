// lib/components/floating_button.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingChatButton extends StatelessWidget {
  const FloatingChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.chat),
                    title: const Text('Chat Bot'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/chatbot');
                    },
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.whatsapp),
                    title: const Text('WhatsApp'),
                    onTap: () {
                      Navigator.pop(context);
                      final message = Uri.encodeComponent('''
Formulir Pengaduan
Nama:
Alamat:
Jenis Pengaduan:
Tanggal Kejadian:
Kronologi Singkat:
''');

                      final url = Uri.parse(
                        'https://wa.me/6285157212192?text=$message',
                      );

                      launchUrl(url, mode: LaunchMode.externalApplication);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      backgroundColor: const Color(0xFFE3C00A),
      child: const Icon(Icons.message, color: Color(0xFF242458)),
    );
  }
}
