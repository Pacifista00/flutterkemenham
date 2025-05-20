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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/jumbotron.png'),
            const SizedBox(height: 24),
            Text(
              'Kementerian Hak Asasi Manusia Republik Indonesia',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF242458),
              ),
            ),
            const SizedBox(height: 24),
            Image.asset('assets/images/cover.png'),
            const BeritaHam(),
            const BeritaKegiatan(),
            const DaftarKantor(),
          ],
        ),
      ),
    );
  }
}
