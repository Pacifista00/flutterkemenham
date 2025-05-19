import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class Pengaduan2021 extends StatelessWidget {
  const Pengaduan2021({super.key});

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
                  const Text(
                    'Data Pengaduan HAM 2021',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),

                  const Text(
                    'Rekapitulasi Tindak Lanjut Komunikasi Masyarakat berdasarkan Hak Konstitusional (UUD NRI 1945)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Image.asset('assets/images/pengaduan/2021_1.png'),
                  const SizedBox(height: 8),

                  const Text(
                    'Rekapitulasi Tindak Lanjut Komunikasi Masyarakat berdasarkan Hak Dasar (UU Nomor 39 Tahun 1999 tentang HAM)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Image.asset('assets/images/pengaduan/2021_2.png'),
                  const SizedBox(height: 8),

                  const Text(
                    'Rekapitulasi Tindak Lanjut Komunikasi Masyarakat berdasarkan Tematik Permasalahan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Image.asset('assets/images/pengaduan/2021_3.png'),
                  const SizedBox(height: 8),

                  const Text(
                    'Rekapitulasi Tindak Lanjut Komunikasi Masyarakat berdasarkan Locus (Provinsi)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Image.asset('assets/images/pengaduan/2021_4.png'),
                  const SizedBox(height: 16),
                  const Text(
                    '(*Data Rekapitulasi Bulan Januari-November 2021)',
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 32),
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
