import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF242458),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alamat dan Kontak
          Image.asset('assets/images/logofooter.png'),
          const SizedBox(height: 8),
          const Text(
            'Jl. HR. Rasuna Said Kav – 4 -5 Kuningan Jakarta Selatan Jakarta Indonesia',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          const Text(
            'Telp (021) – 252 1344\nFax (021) – 252 2915',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 24),

          // Konten Footer: 4 kolom
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              return isMobile
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildFooterColumns(),
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        _buildFooterColumns()
                            .map((widget) => Expanded(child: widget))
                            .toList(),
                  );
            },
          ),
          const SizedBox(height: 24),

          // Footer Bawah
          const Center(
            child: Text(
              '© 2025 Kementerian Hukum dan Hak Asasi Manusia Republik Indonesia',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFooterColumns() {
    return [
      _footerSection('Tentang Kami', [
        'Tentang Kementerian HAM',
        'Tugas dan Fungsi',
        'Profil Pejabat',
        'Unit Kerja',
        'Visi dan Misi',
        'Rencana Strategis',
        'Sejarah Berdirinya',
      ]),
      _footerSection('Repositori', [
        'Instrumen HAM Internasional',
        'Instrumen HAM Nasional',
        'Pusat Informasi / PPID',
      ]),
      _footerSection('Layanan Publik', [
        'Adukan dugaan pelanggaran HAM',
        'Penilaian Mandiri Risiko Bisnis dan HAM',
        'Pustaka HAM Indonesia',
        'Permintaan Informasi',
        'Aplikasi G2G',
        'Penilaian Kabupaten/Kota Peduli HAM',
        'Pelayanan Publik Berbasis HAM',
      ]),
      _footerSection('Media Sosial', ['Facebook', 'X', 'YouTube', 'TikTok']),
    ];
  }

  Widget _footerSection(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFE3C00A),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          for (final item in items)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                item,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
        ],
      ),
    );
  }
}
