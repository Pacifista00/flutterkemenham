import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class TugasFungsi extends StatelessWidget {
  const TugasFungsi({super.key});

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
                children: const [
                  Text(
                    'Tugas dan Fungsi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Tugas dan Fungsi Kementerian Hak Asasi Manusia adalah sebagai berikut:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Berdasarkan Peraturan Menteri Hak Asasi Manusia Nomor 1 Tahun 2024 tentang Organisasi dan Tata Kerja Kementerian  Hak Asasi Manusia:',
                    style: TextStyle(fontSize: 14),
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
                    'Kementerian mempunyai tugas menyelenggarakan urusan pemerintahan di bidang hak asasi manusia untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fungsi',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    'Dalam melaksanakan tugas sebagaimana dimaksud dalam Pasal 5, Kementerian menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Perumusan, penetapan, dan pelaksanaan kebijakan di bidang instrumen, penguatan, pelayanan, dan kepatuhan hak asasi manusia;',
                      'Pelaksanaan bimbingan teknis dan supervisi atas pelaksanaan urusan Kementerian;',
                      'Koordinasi pelaksanaan tugas, pembinaan, dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Kementerian;',
                      'Pengelolaan barang milik/kekayaan negara yang menjadi tanggung jawab Kementerian;',
                      'Pengawasan atas pelaksanaan tugas di lingkungan Kementerian;',
                      'Pelaksanaan kegiatan teknis yang berskala nasional;',
                      'Pelaksanaan tugas pokok sampai ke daerah;',
                      'Pelaksanaan dukungan yang bersifat substantif kepada seluruh unsur organisasi di lingkungan Kementerian;',
                      'Pelaksanaan fungsi lain yang diberikan oleh presiden.',
                    ],
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
