import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class SekretariatJendral extends StatelessWidget {
  const SekretariatJendral({super.key});

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
                    'Sekretariat Jenderal',
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
                    'Sekretariat Jenderal mempunyai tugas menyelenggarakan koordinasi pelaksanaan tugas, pembinaan, dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Kementerian.',
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
                    'Dalam melaksanakan tugas, Sekretariat Jenderal menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Koordinasi kegiatan Kementerian;',
                      'Koordinasi dan penyusunan rencana, program, dan anggaran Kementerian;',
                      'Pembinaan dan pemberian dukungan administrasi yang meliputi ketatausahaan, sumber daya manusia, keuangan, kerumahtanggaan, kerja sama, hubungan masyarakat, arsip, dan dokumentasi Kementerian;',
                      'Pembinaan dan penataan organisasi dan tata laksana;',
                      'Koordinasi dan penyusunan peraturan perundang-undangan serta pelaksanaan advokasi hukum;',
                      'Koordinasi dan penyelenggaraan pengelolaan barang milik/kekayaan negara dan layanan pengadaan barang/jasa;',
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
                      'Biro Perencanaan dan Kerja Sama;',
                      'Biro Sumber Daya Manusia, Hukum, Organisasi dan Tata Laksana;',
                      'Biro Keuangan dan Barang Milik Negara;',
                      'Biro Umum, Protokol, dan Hubungan Masyarakat.',
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
                    'assets/images/struktursekrejen.png',
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
