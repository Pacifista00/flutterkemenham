import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class Sejarah extends StatelessWidget {
  const Sejarah({super.key});

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
                    'Sejarah Berdirinya Kementerian HAM',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Dengan beralihnya kepemimpinan dari Presiden RI ke-7, Bapak Ir. Joko Widodo kepada Presiden RI ke-8, Bapak Prabowo Subianto, dibentuklah susunan kabinet baru “Kabinet Merah Putih” yang diumumkan pada tanggal 20 Oktober 2024. Dalam susunan Kabinet Merah Putih, Presiden RI ke-8 memecah Kementerian Hukum dan Hak Asasi Manusia menjadi Kementerian Hukum, Kementerian Hak Asasi Manusia, dan Kementerian Imigrasi dan Pemasyarakatan.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Selanjutnya, Presiden RI ke-8 berdasarkan Surat Keputusan Presiden Republik Indonesia Nomor 133/P Tahun 2024 tentang Pembentukan Kementerian Negara dan Pengangkatan Menteri Negara Kabinet Merah Putih Periode Tahun 2024-2029 dan  Keputusan Presiden Republik Indonesia Nomor 73/M Tahun 2024 tentang Pengangkatan Wakil Menteri Negara Kabinet Merah Putih Periode Tahun 2024-2029 mengangkat dan melantik Bapak Natalius Pigai sebagai Menteri Hak Asasi Manusia dan Bapak Mugiyanto sebagai Wakil Menteri Hak Asasi Manusia Republik Indonesia.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Pada 5 November 2024 Peraturan Presiden Nomor 156 Tahun 2024 tentang Kementerian Hak Asasi Manusia telah diundangkan dan Kementerian Hak Asasi Manusia telah resmi berdiri, dengan susunan organisasi dan tata kerja yang diatur dalam Peraturan Menteri Hak Asasi Manusia Nomor 1 Tahun 2024 tentang Organisasi dan Tata Kerja Kementerian Hak Asasi Manusia yang resmi diundangkan pada 26 November 2024.',
                    style: TextStyle(fontSize: 14),
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
