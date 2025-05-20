import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kemenham/config/api_config.dart';

class BeritaHam extends StatefulWidget {
  const BeritaHam({super.key});

  @override
  State<BeritaHam> createState() => _BeritaHamState();
}

class _BeritaHamState extends State<BeritaHam> {
  List<dynamic> beritaList = [];
  bool isLoading = true;
  int currentPage = 0; // track halaman carousel

  @override
  void initState() {
    super.initState();
    fetchBerita();
  }

  Future<void> fetchBerita() async {
    try {
      final response = await http.get(
        Uri.parse('${ApiConfig.baseUrl}/api/berita/ham'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          beritaList = data['data']['data'];
          isLoading = false;
        });
      } else {
        throw Exception('Gagal mengambil data berita HAM');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Berita HAM Terkini',
                style: TextStyle(
                  color: Color(0xFF242458),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/list-berita-ham');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF242458),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Selengkapnya'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 320,
            child:
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Column(
                      children: [
                        Expanded(
                          child: PageView.builder(
                            itemCount: beritaList.length,
                            onPageChanged: (index) {
                              setState(() {
                                currentPage = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              final berita = beritaList[index];
                              return _buildNewsCard(
                                context: context,
                                imagePath:
                                    '${ApiConfig.baseUrl}/storage/${berita['image_path']}',
                                title: berita['title'] ?? '',
                                date: berita['date'] ?? '',
                                category: berita['category'] ?? '',
                                description: berita['description'] ?? '',
                                onReadMore: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/berita-detail',
                                    arguments: {'id': berita['id']},
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        // indikator dot
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(beritaList.length, (index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: currentPage == index ? 12 : 8,
                              height: currentPage == index ? 12 : 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    currentPage == index
                                        ? const Color(0xFFE3C00A)
                                        : Colors.grey[400],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({
    required BuildContext context,
    required String imagePath,
    required String title,
    required String date,
    required String category,
    required String description,
    VoidCallback? onReadMore,
  }) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imagePath,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
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
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onReadMore,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3C00A),
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
