import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kemenham/config/api_config.dart';

class BeritaKegiatan extends StatefulWidget {
  const BeritaKegiatan({super.key});

  @override
  State<BeritaKegiatan> createState() => _BeritaKegiatanState();
}

class _BeritaKegiatanState extends State<BeritaKegiatan> {
  List<dynamic> beritaList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchBerita();
  }

  Future<void> fetchBerita() async {
    try {
      final response = await http.get(
        Uri.parse('${ApiConfig.baseUrl}/api/berita/kegiatan'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          beritaList = data['data']; // Sesuaikan dengan struktur JSON API kamu
          isLoading = false;
        });
      } else {
        throw Exception('Gagal mengambil data berita');
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
                'Berita Kegiatan',
                style: TextStyle(
                  color: Color(0xFF242458),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
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
            height: 277,
            child:
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                            beritaList.map((berita) {
                              return _buildNewsCard(
                                context: context,
                                imagePath:
                                    '${ApiConfig.baseUrl}/storage/${berita['image_path']}',
                                date: berita['date'] ?? '',
                                category: berita['category'] ?? '',
                                title: berita['title'] ?? '',
                                description: berita['description'] ?? '',
                                onReadMore: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/berita-detail',
                                    arguments: {'id': berita['id']},
                                  );
                                },
                              );
                            }).toList(),
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({
    required BuildContext context,
    required String imagePath,
    required String date,
    required String category,
    required String title,
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
            imagePath.startsWith('http')
                ? Image.network(
                  imagePath,
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                )
                : Image.asset(
                  imagePath,
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color(0xFF242458),
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
                    style: const TextStyle(fontSize: 12),
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
