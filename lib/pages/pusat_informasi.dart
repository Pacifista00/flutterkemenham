import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class PusatInformasi extends StatelessWidget {
  const PusatInformasi({super.key});

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
                    'Instrumen HAM Nasional',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // List Card
                  Column(
                    children: [
                      Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Gambar logo di kiri
                              Image.asset(
                                'assets/images/logo/speaker.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Data Pengaduan Dugaan Pelanggaran HAM',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        // Baris atas (4 tombol)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            yearButton(context, '2018'),
                                            yearButton(context, '2019'),
                                            yearButton(context, '2020'),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ), // Jarak antara dua baris
                                        // Baris bawah (4 tombol)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            yearButton(context, '2021'),
                                            yearButton(context, '2022'),
                                            yearButton(context, '2023'),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ), // Jarak antara dua baris
                                        // Baris bawah (4 tombol)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            yearButton(context, '2024'),
                                          ],
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
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

Widget yearButton(BuildContext context, String year) {
  return TextButton(
    onPressed: () {
      Navigator.pushNamed(context, '/pengaduan/$year');
    },
    child: Text(
      year,
      style: const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.underline,
        color: Colors.blue,
      ),
    ),
  );
}
