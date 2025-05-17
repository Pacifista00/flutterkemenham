import 'package:flutter/material.dart';

class DaftarKantor extends StatelessWidget {
  const DaftarKantor({super.key});

  final List<String> kantorWilayah = const [
    'Aceh',
    'Sumatera Utara',
    'Sumatera Barat',
    'Jambi',
    'Kepulauan Bangka Belitung',
    'Sumatera Selatan',
    'Lampung',
    'Jawa Barat',
    'Banten',
    'Daerah Khusus Jakarta',
    'Jawa Tengah',
    'Jawa Timur',
    'Nusa Tenggara Timur',
    'Papua Barat',
    'Kalimantan Tengah',
    'Kalimantan Timur',
    'Kalimantan Selatan',
    'Sulawesi Barat',
    'Sulawesi Tengah',
    'Sulawesi Selatan',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFf5f5f5),
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Daftar Kantor Wilayah Kementerian HAM',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242458),
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children:
                kantorWilayah.map((kantor) {
                  return SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 32,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                          color: Color(0xFF242458),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            kantor,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
