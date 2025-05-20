import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';
import 'package:kemenham/config/api_config.dart';

class ListBeritaHam extends StatefulWidget {
  const ListBeritaHam({super.key});

  @override
  State<ListBeritaHam> createState() => _ListBeritaHamState();
}

class _ListBeritaHamState extends State<ListBeritaHam> {
  List<dynamic> beritaList = [];
  bool isLoading = true;
  int currentPage = 1;
  int lastPage = 1;

  @override
  void initState() {
    super.initState();
    fetchBerita();
  }

  Future<void> fetchBerita({int page = 1}) async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.get(
        Uri.parse('${ApiConfig.baseUrl}/api/berita/ham?page=$page'),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          beritaList = data['data']['data'];
          currentPage = data['data']['current_page'];
          lastPage = data['data']['last_page'];
          isLoading = false;
        });
      } else {
        throw Exception('Gagal mengambil data berita HAM');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Sidebar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Konten utama
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Berita',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                        children:
                            beritaList.map((berita) {
                              return Card(
                                margin: const EdgeInsets.only(bottom: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      '${ApiConfig.baseUrl}/storage/${berita['image_path']}',
                                      width: double.infinity,
                                      height: 180,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const SizedBox(
                                                height: 180,
                                                child: Center(
                                                  child: Icon(
                                                    Icons.broken_image,
                                                  ),
                                                ),
                                              ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${berita['date']} / by Humas Kementerian HAM / ${berita['category']}',
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            berita['description'] ?? '',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/berita-detail',
                                                  arguments: {
                                                    'id': berita['id'],
                                                  },
                                                );
                                              },

                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(
                                                  0xFFE3C00A,
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
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

                  const SizedBox(height: 16),
                  if (!isLoading)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (currentPage > 1)
                          ElevatedButton(
                            onPressed: () {
                              fetchBerita(page: currentPage - 1);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCCCCCC),
                            ),
                            child: const Text('Previous'),
                          ),
                        const SizedBox(width: 16),
                        if (currentPage < lastPage)
                          ElevatedButton(
                            onPressed: () {
                              fetchBerita(page: currentPage + 1);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE3C00A),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(color: Color(0xFF242458)),
                            ),
                          ),
                      ],
                    ),
                  const SizedBox(height: 32),
                ],
              ),
            ),

            // Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
