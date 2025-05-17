import 'package:flutter/material.dart';

class BeritaHam extends StatelessWidget {
  const BeritaHam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF242458),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Berita HAM Terkini',
                style: TextStyle(
                  color: Color(0xFFE3C00A),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi tombol di sini
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF242458),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Selengkapnya'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 277,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildNewsCard(
                    imagePath: 'assets/images/cover.png',
                    title: 'Berita 1',
                    date: '16 Mei 2025',
                    description:
                        'Kementerian Hukum dan HAM menetapkan kebijakan baru untuk mendukung reformasi birokrasi...',
                    onReadMore: () {
                      // print('Berita 1 diklik');
                    },
                  ),
                  _buildNewsCard(
                    imagePath: 'assets/images/cover.png',
                    title: 'Berita 2',
                    date: '15 Mei 2025',
                    description:
                        'Presiden menegaskan pentingnya HAM dalam pemerintahan yang bersih reformasi birokrasi...',
                    onReadMore: () {
                      // print('Berita 2 diklik');
                    },
                  ),
                  _buildNewsCard(
                    imagePath: 'assets/images/cover.png',
                    title: 'Berita 3',
                    date: '14 Mei 2025',
                    description:
                        'Pemerintah menyalurkan bantuan hukum gratis untuk masyarakat kurang mampu...',
                    onReadMore: () {
                      // print('Berita 3 diklik');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({
    required String imagePath,
    required String title,
    required String date,
    required String description,
    VoidCallback? onReadMore,
  }) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 100, width: 200, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 6.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color(0xFFE3C00A),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onReadMore,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE3C00A),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Baca',
                        style: TextStyle(color: Color(0xFF242458)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
