import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class ProfilMenteri extends StatelessWidget {
  const ProfilMenteri({super.key});

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
                    'Profil Menteri dan Wakil Menteri',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Menteri Hak Asasi Manusia',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  Text(
                    'Natalius Pigai',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Gambar kiri
                      Image.asset(
                        'assets/images/fotomenteri.png',
                        width: 180,
                        height: 180,
                      ),

                      // Gambar kanan
                      Image.asset(
                        'assets/images/karirmenteri.png',
                        width: 180,
                        height: 180,
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Text(
                    'Wakil Menteri Hak Asasi Manusia',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  Text(
                    'Mugiyanto',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Gambar kiri
                      Image.asset(
                        'assets/images/fotowamen.png',
                        width: 180,
                        height: 180,
                      ),

                      // Gambar kanan
                      Image.asset(
                        'assets/images/karirwamen.png',
                        width: 180,
                        height: 180,
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
