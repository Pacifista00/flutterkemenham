import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:kemenham/config/api_config.dart';

class DetailBerita extends StatefulWidget {
  const DetailBerita({super.key});

  @override
  State<DetailBerita> createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  Future<Map<String, dynamic>> fetchBeritaDetail(String id) async {
    final response = await http.get(
      Uri.parse('${ApiConfig.baseUrl}/api/berita/$id'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['data'];
    } else {
      throw Exception('Gagal memuat data berita');
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final beritaId = args['id'].toString();

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Berita')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchBeritaDetail(beritaId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Terjadi kesalahan: ${snapshot.error}'));
          }

          final berita = snapshot.data!;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul
                Text(
                  berita['title'] ?? 'Judul tidak tersedia',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),

                // Gambar
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    '${ApiConfig.baseUrl}/storage/${berita['image_path']}',
                    errorBuilder:
                        (context, error, stackTrace) => const SizedBox(
                          height: 200,
                          child: Center(child: Icon(Icons.broken_image)),
                        ),
                  ),
                ),
                const SizedBox(height: 16),

                // Info tanggal
                Text(
                  '${berita['date']} / by Humas Kementerian HAM / in Berita Terkini',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),

                // Deskripsi
                Text(
                  berita['description'] ?? 'Tidak ada deskripsi.',
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
