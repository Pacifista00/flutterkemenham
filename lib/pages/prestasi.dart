import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class Prestasi extends StatelessWidget {
  const Prestasi({super.key});

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
                    'Prestasi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/djpb.png',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Kinerja Pelaksanaan Anggaran\nTahun Anggaran 2019',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            'Peringkat Terbaik III',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/djpb.png',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Kategori Pagu Sedang IKPA\nTahun 2020',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            'Peringkat Terbaik II',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/jdihn.png',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Anggota JDIHN Terbaik\nTahun 2019',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            'Peringkat Terbaik I',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/jdihn.png',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Anggota JDIHN Terbaik\nTahun 2021',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            'Peringkat Terbaik I',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ],
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
