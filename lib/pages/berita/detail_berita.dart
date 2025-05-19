import 'package:flutter/material.dart';

class DetailBerita extends StatelessWidget {
  const DetailBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Berita')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menteri HAM Minta Dokter PPDS Unpad Pelaku Kekerasan Seksual Harus Diproses Hukum',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/cover.png'),
            ),
            const SizedBox(height: 16),
            Text(
              '18 Mei 2025 / by Humas Kementerian HAM / in Berita Terkini',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              'Pigai mengatakan kantor wilayah Kementerian HAM di Jawa Barat sudah turun tangan untuk mengurus kasus tersebut. Pihaknya, kata pigai, telah bertemu dengan korban sekaligus pelaku dalam kasus ini. ',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
