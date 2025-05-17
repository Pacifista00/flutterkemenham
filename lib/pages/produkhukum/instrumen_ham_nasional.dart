import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class InstrumenHamNasional extends StatelessWidget {
  const InstrumenHamNasional({super.key});

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
                                'assets/images/logo/pancasila.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Undang-Undang Dasar Negara Republik Indonesia Tahun 1945',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Sekretariat Jenderal menyelenggarakan koordinasi pelaksanaan tugas, pembinaan, dan dukungan administrasi di lingkungan Kementerian.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

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
                                'assets/images/logo/mpr.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Ketetapan Majelis Permusyawaratan Rakyat No. XVII Tahun 1998',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Sekretariat Jenderal menyelenggarakan koordinasi pelaksanaan tugas, pembinaan, dan dukungan administrasi di lingkungan Kementerian.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

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
                                'assets/images/logo/uu.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Undang-Undang',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '• Undang-Undang Nomor 12 Tahun 2022 tentang Tindak Pidana Kekerasan Seksual',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 11 Tahun 2020 tentang Cipta Kerja',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 39 Tahun 1999 tentang Hak Asasi Manusia',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 61 Tahun 2014 tentang Kesehatan Reproduksi',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 29 Tahun 1999 tentang Pengesahan International Convention On The Elimination of All Forms of Racial Discrimination, 1965',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 26 Tahun 2000 tentang Pengadilan Hak Asasi Manusia',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 23 Tahun 2004 tentang Penghapusan Kekerasan dalam Rumah Tangga',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 19 Tahun 2011 tentang Pengesahan Convention On The Rights of Persons With Disabilities',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 18 Tahun 2017 tentang Pelindungan Pekerja Migran Indonesia',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 35 Tahun 2014 tentang Perubahan Atas UU No. 23 Tahun 2002 Tentang Perlindungan Anak',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 11 Tahun 2012 tentang Sistem Peradilan Pidana Anak',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 18 Tahun 2014 tentang Kesehatan Jiwa',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 12 Tahun 2006 tentang Kewarganegaraan RI',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 10 Tahun 2012 tentang Pengesahan Optional Protocol to The CRC On The Sale of Children, Child Prostitution and Child Pornography',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 9 Tahun 2012 tentang Pengesahan Optional Protocol to The CRC On The Involvement of Children In Armed Conflict',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 6 Tahun 2012 tentang Pengesahan International Convention On The Protection of The Rights of All Migrant Workers and Members of Their Families',
                                    ),
                                    Text(
                                      '• Undang-Undang Nomor 8 Tahun 2016 tentang Penyandang Disabilitas',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

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
                                'assets/images/logo/presiden.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Keputusan, Peraturan, dan Instruksi Presiden',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '• Keputusan Presiden No. 40 Tahun 2004 tentang RANHAM Tahun 2004-2009',
                                    ),
                                    Text(
                                      '• Keputusan Presiden No. 129 Tahun 1998 tentang RANHAM Indonesia',
                                    ),
                                    Text(
                                      '• Peraturan Presiden No. 53 Tahun 2021 tentang RANHAM Tahun 2021-2025',
                                    ),
                                    Text(
                                      '• Peraturan Presiden No. 33 Tahun 2018 tentang Perubahan Perpres No. 75 Tahun 2015 tentang RANHAM Tahun 2015-2019',
                                    ),
                                    Text(
                                      '• Peraturan Presiden No. 75 Tahun 2015 tentang RANHAM 2015-2019',
                                    ),
                                    Text(
                                      '• Peraturan Presiden No. 23 Tahun 2011 tentang RANHAM Tahun 2011-2014',
                                    ),
                                    Text(
                                      '• Instruksi Presiden No. 10 Tahun 2015 tentang Aksi HAM Tahun 2015',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

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
                                'assets/images/logo/pengayoman.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),

                              // Judul dan deskripsi di kanan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Peraturan Menteri Hukum dan HAM',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF242458),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '• Permenkumham No. 16 Tahun 2024 tentang Pedoman Pengarusutamaan HAM dalam Pembentukan Peraturan Perundang-undangan',
                                    ),
                                    Text(
                                      '• Permenkumham No. 2 Tahun 2022 tentang Pelayanan Publik Berbasis HAM',
                                    ),
                                    Text(
                                      '• Permenkumham No. 22 Tahun 2021 tentang Kriteria Daerah Kabupaten/Kota Peduli HAM',
                                    ),
                                    Text(
                                      '• Permenkumham No. 22 Tahun 2012 tentang Tata Cara Pendaftaran Anak Berkewarganegaraan Ganda dan Permohonan Fasilitas Keimigrasian',
                                    ),
                                    Text(
                                      '• Permenkumham No. 27 Tahun 2018 tentang Penghargaan Pelayanan Publik Berbasis HAM',
                                    ),
                                    Text(
                                      '• Permenkumham No. 34 Tahun 2016 tentang Kriteria Daerah Kabupaten/Kota Peduli HAM',
                                    ),
                                    Text(
                                      '• Permenkumham No. 32 Tahun 2016 tentang Pelayanan Komunikasi Masyarakat terhadap Permasalahan HAM',
                                    ),
                                    Text(
                                      '• Permenkumham No. 24 Tahun 2017 tentang Pedoman Materi Muatan HAM dalam Pembentukan Peraturan Perundang-undangan',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
