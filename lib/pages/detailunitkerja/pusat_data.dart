import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class PusatData extends StatelessWidget {
  const PusatData({super.key});

  @override
  Widget build(BuildContext context) {
    return Sidebar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding hanya untuk bagian konten
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pusat Data dan Informasi HAM',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Tugas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Pusat Data dan Informasi Hak Asasi Manusia mempunyai tugas melaksanakan pengelolaan data, sistem, infrastruktur, teknologi informasi Kementerian, serta urusan ketatausahaan di lingkungan Pusat Data dan Informasi Hak Asasi Manusia.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fungsi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Dalam melaksanakan tugas, Pusat Data dan Informasi Hak Asasi Manusia menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Penyusunan rencana, program, dan anggaran Pusat Data dan Informasi Hak Asasi Manusia;',
                      'Koordinasi dan penyusunan kebijakan, perencanaan dan anggaran, pengembangan, dan pengelolaan teknologi informasi Pusat Data dan Informasi Hak Asasi Manusia;',
                      'Pembinaan, koordinasi dan fasilitasi penyusunan rencana, standarisasi, fasilitasi, dan supervisi sistem pemerintahan berbasis elektronik Kementerian;',
                      'Koordinasi dan fasilitasi pelaksanaan izin belanja teknologi informasi di lingkungan Kementerian;',
                      'Pengoordinasian pengelolaan penjaminan mutu program teknologi informasi dan komunikasi;',
                      'Koordinasi dan pelaksanaan pengamanan dan pemeliharaan data, jaringan portal dan infrastruktur teknologi informasi di lingkungan Kementerian;',
                      'Analisa data, pengelolaan, dan penyajian informasi hak asasi manusia;',
                      'Pelaksanaan tugas lain yang diperintahkan oleh Menteri melalui Sekretaris Jenderal.',
                    ],
                  ),

                  SizedBox(height: 16),
                  Text(
                    'Susunan Organisasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Subbagian Tata Usaha',
                      'kelompok jabatan fungsional dan pelaksana.',
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Bagan Struktur Organisasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'assets/images/strukturpusatdata.png',
                    fit: BoxFit.cover,
                  ),

                  SizedBox(height: 32),
                ],
              ),
            ),

            // Footer di luar padding
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: Text(item, style: const TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
