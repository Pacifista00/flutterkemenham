import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/section/berita_ham_terkini.dart';
import 'package:kemenham/section/berita_kegiatan.dart';
import 'package:kemenham/section/daftar_kantor.dart';
// import 'package:kemenham/components/footer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sidebar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/cover.png'),
            const BeritaHam(),
            const BeritaKegiatan(),
            const DaftarKantor(),
            // const Footer(),
          ],
        ),
      ),
    );
  }
}
