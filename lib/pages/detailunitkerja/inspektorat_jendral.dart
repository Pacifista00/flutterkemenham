import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class InspektoratJendral extends StatelessWidget {
  const InspektoratJendral({super.key});

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
                    'Inspektorat Jenderal',
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
                    'Sekretariat Jenderal Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia mempunyai tugas melaksanakan pemberian dukungan manajemen terhadap pelaksanaan tugas satuan organisasi di lingkungan Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia.',
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
                    'Dalam melaksanakan tugas, Sekretariat Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia menyelenggarakan fungsi:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Koordinasi dan penyusunan rencana, program, dan anggaran pada Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Koordinasi dan fasilitasi pembentukan regulasi dan kebijakan, penataan organisasi, ketatalaksanaan, dan reformasi birokrasi;',
                      'Koordinasi dan fasilitasi pengelolaan manajemen kinerja, pelaksanaan pemantauan pengendalian internal, dan manajemen risiko;',
                      'Koordinasi dan pengelolaan urusan sumber daya manusia pada Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Koordinasi dan fasilitasi pelaksanaan advokasi dan pelindungan hukum pegawai di lingkungan Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Koordinasi dan pengelolaan urusan keuangan pada Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Koordinasi dan pengelolaan administrasi barang milik negara pada Direktorat Jenderal Pelayanan dan Kepatuhan Hak Asasi Manusia;',
                      'Koordinasi dan fasilitasi pelaksanaan urusan hubungan masyarakat dan kerja sama;',
                      'Pelaksanaan urusan ketatausahaan, keprotokolan, dan kerumahtanggaan;',
                      'Pengelolaan sistem informasi pengawasan dan layanan pengaduan;',
                      'Pengelolaan laporan harta kekayaan aparatur sipil negara di lingkungan Kementerian;',
                      'Koordinasi penyusunan program kerja pengawasan tahunan.',
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
                  Text('Susunan organisasi Inspektorat Jenderal terdiri atas:'),
                  BulletList(
                    items: [
                      'Sekretariat Direktorat Jenderal Instrumen dan Penguatan Hak Asasi Manusia;',
                      'Direktorat Penyusunan dan Evaluasi Instrumen Hak Asasi Manusia;',
                      'Direktorat Penguatan Kapasitas Hak Asasi Manusia Aparatur Negara; dan',
                      'Direktorat Penguatan Kapasitas Hak Asasi Manusia Masyarakat, Komunitas, dan Pelaku Usaha.',
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Susunan organisasi Sekretariat Inspektorat Jenderal terdiri atas:',
                  ),
                  BulletList(
                    items: [
                      'Bagian Program dan Pelaporan;',
                      'Bagian Umum dan Sumber Daya Manusia;',
                      'Subbagian Tata Usaha;',
                      'Kelompok jabatan fungsional dan pelaksana.',
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Susunan organisasi Inspektorat Wilayah I terdiri atas:',
                  ),
                  BulletList(
                    items: [
                      'Subbagian Tata Usaha',
                      'kelompok jabatan fungsional dan pelaksana',
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Susunan organisasi Inspektorat Wilayah II terdiri atas:',
                  ),
                  BulletList(
                    items: [
                      'Subbagian Tata Usaha',
                      'kelompok jabatan fungsional dan pelaksana',
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
                    'assets/images/strukturinspektorat.png',
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
