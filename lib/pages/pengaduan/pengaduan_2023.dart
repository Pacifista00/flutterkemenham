import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class Pengaduan2023 extends StatelessWidget {
  const Pengaduan2023({super.key});

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
                    'Data Pengaduan HAM 2023',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Image.asset('assets/images/pengaduan/2023_1.png'),
                  const SizedBox(height: 16),

                  Image.asset('assets/images/pengaduan/2023_2.png'),
                  const SizedBox(height: 16),

                  Image.asset('assets/images/pengaduan/2023_3.png'),
                  const SizedBox(height: 16),

                  Image.asset('assets/images/pengaduan/2023_4.png'),

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
