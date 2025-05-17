import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class DirektoratJendralInstrumen extends StatelessWidget {
  const DirektoratJendralInstrumen({super.key});

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
                    'Direktorat Jenderal Instrumen dan Penguatan Hak Asasi Manusia',
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
                    'Direktorat Jenderal Instrumen dan Penguatan Hak Asasi Manusia mempunyai tugas menyelenggarakan perumusan dan pelaksanaan kebijakan di bidang instrumen dan penguatan hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain sesuai dengan ketentuan peraturan perundang-undangan.',
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
                    'Dalam melaksanakan tugas, Direktorat Jenderal Instrumen dan Penguatan Hak Asasi Manusia menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Perumusan kebijakan di bidang instrumen dan penguatan hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan kebijakan di bidang instrumen dan penguatan hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pemberian bimbingan teknis dan supervisi di bidang instrumen dan penguatan hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan pemantauan, analisis, evaluasi, dan pelaporan di bidang instrumen dan penguatan hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan administrasi Direktorat Jenderal; dan',
                      'Pelaksanaan fungsi lain yang diberikan oleh Menteri.',
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
                      'Sekretariat Direktorat Jenderal Instrumen dan Penguatan Hak Asasi Manusia;',
                      'Direktorat Penyusunan dan Evaluasi Instrumen Hak Asasi Manusia;',
                      'Direktorat Penguatan Kapasitas Hak Asasi Manusia Aparatur Negara; dan',
                      'Direktorat Penguatan Kapasitas Hak Asasi Manusia Masyarakat, Komunitas, dan Pelaku Usaha.',
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
                    'assets/images/dirjeninstrumen.png',
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
