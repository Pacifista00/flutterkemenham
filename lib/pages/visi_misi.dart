import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class VisiMisi extends StatelessWidget {
  const VisiMisi({super.key});

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
                children: const [
                  Text(
                    'Visi dan Misi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Visi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bersama Indonesia Maju Menuju Indonesia Emas 2045',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Misi',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),

                  SizedBox(height: 8),
                  Text('Asta Cita', style: TextStyle(fontSize: 14)),
                  SizedBox(height: 8),
                  BulletList(
                    items: [
                      'Memperkokoh ideologi Pancasila, demokrasi, dan hak asasi manusia (HAM).',
                      'Memantapkan sistem pertahanan keamanan negara dan mendorong kemandirian bangsa melalui swasembada pangan, energi, air, ekonomi kreatif, ekonomi hijau, dan ekonomi biru.',
                      'Meningkatkan lapangan kerja yang berkualitas, mendorong kewirausahaan, mengembangkan industri kreatif, dan melanjutkan pengembangan infrastruktur.',
                      'Memperkuat pembangunan sumber daya manusia (SDM), sains, teknologi, pendidikan, kesehatan, prestasi olahraga, kesetaraan gender, serta penguatan peran perempuan, pemuda, dan penyandang disabilitas.',
                      'Melanjutkan hilirisasi dan industrialisasi untuk meningkatkan nilai tambah di dalam negeri.',
                      'Membangun dari desa dan dari bawah untuk pemerataan ekonomi dan pemberantasan kemiskinan.',
                      'Memperkuat reformasi politik, hukum, dan birokrasi, serta memperkuat pencegahan dan pemberantasan korupsi dan narkoba.',
                      'Memperkuat penyelarasan kehidupan yang harmonis dengan lingkungan, alam, dan budaya, serta peningkatan toleransi antarumat beragama untuk mencapai masyarakat yang adil dan makmur.',
                    ],
                  ),

                  SizedBox(height: 32),
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

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: Text(item, style: const TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
