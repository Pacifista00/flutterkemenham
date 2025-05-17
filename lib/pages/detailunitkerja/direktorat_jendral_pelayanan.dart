import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class DirektoratJendralPelayanan extends StatelessWidget {
  const DirektoratJendralPelayanan({super.key});

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
                    'Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia',
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
                    'Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia mempunyai tugas menyelenggarakan perumusan dan pelaksanaan kebijakan di bidang pelayanan, pengaduan, pembelaan, dan penilaian hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain sesuai dengan ketentuan peraturan perundang-undangan.',
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
                    'Dalam melaksanakan tugas, Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Perumusan kebijakan di bidang pelayanan, pengaduan, pembelaan, dan penilaian hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan kebijakan di bidang pelayanan, pengaduan, pembelaan, dan penilaian hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pemberian bimbingan teknis dan supervisi di bidang pelayanan, pengaduan, pembelaan, dan penilaian hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan pemantauan, analisis, evaluasi, dan pelaporan di bidang pelayanan, pengaduan, pembelaan, dan penilaian hak asasi manusia dalam lingkup hukum, politik, ekonomi, sosial, budaya, pertahanan keamanan negara, dan bidang lain;',
                      'Pelaksanaan administrasi Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia; dan pelaksanaan fungsi lain yang diberikan oleh Menteri.',
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
                      'Sekretariat Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Direktorat Pelayanan Hak Asasi Manusia;',
                      'Direktorat Kepatuhan Hak Asasi Manusia Instansi Pemerintah;',
                      'Direktorat Kepatuhan Hak Asasi Manusia Masyarakat, Komunitas, dan Pelaku Usaha; dan',
                      'Kelompok jabatan fungsional dan pelaksana.',
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
