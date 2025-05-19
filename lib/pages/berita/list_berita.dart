import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class ListBerita extends StatelessWidget {
  const ListBerita({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> beritaList = [
      {
        'image': 'assets/images/cover.png',
        'date': '15 April 2025',
        'description':
            'Kementerian HAM menetapkan kebijakan baru untuk mendukung reformasi birokrasi...',
      },
      {
        'image': 'assets/images/cover.png',
        'date': '14 April 2025',
        'description':
            'Presiden menegaskan pentingnya HAM dalam pembangunan nasional...',
      },
      {
        'image': 'assets/images/cover.png',
        'date': '13 April 2025',
        'description':
            'Bantuan hukum gratis mulai digulirkan di berbagai daerah oleh pemerintah...',
      },
    ];

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
                    'Berita HAM Terkini',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // List Berita Card
                  Column(
                    children:
                        beritaList.map((berita) {
                          return Card(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  berita['image']!,
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${berita['date']} / by Humas Kementerian HAM / Berita HAM Terkini',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        berita['description']!,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                              context,
                                              '/berita-detail',
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(
                                              0xFFE3C00A,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 12,
                                            ),
                                            elevation: 0,
                                          ),
                                          child: const Text(
                                            'Selengkapnya',
                                            style: TextStyle(
                                              color: Color(0xFF242458),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
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
