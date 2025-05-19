import 'package:flutter/material.dart';
import 'package:kemenham/components/splash_screen.dart';
import 'package:kemenham/pages/berita/detail_berita.dart';
import 'package:kemenham/pages/berita/list_berita.dart';
import 'package:kemenham/pages/chatbot/chat_bot.dart';
import 'package:kemenham/pages/detailunitkerja/direktorat_jendral_instrumen.dart';
import 'package:kemenham/pages/detailunitkerja/direktorat_jendral_pelayanan.dart';
import 'package:kemenham/pages/detailunitkerja/inspektorat_jendral.dart';
import 'package:kemenham/pages/detailunitkerja/pusat_data.dart';
import 'package:kemenham/pages/detailunitkerja/pusat_pengembangan.dart';
import 'package:kemenham/pages/detailunitkerja/sekretariat_jendral.dart';
import 'package:kemenham/pages/main_page.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2018.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2019.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2020.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2021.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2022.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2023.dart';
import 'package:kemenham/pages/pengaduan/pengaduan_2024.dart';
import 'package:kemenham/pages/prestasi.dart';
import 'package:kemenham/pages/produkhukum/instrumen_ham_internasional.dart';
import 'package:kemenham/pages/produkhukum/instrumen_ham_nasional.dart';
import 'package:kemenham/pages/profil_menteri.dart';
import 'package:kemenham/pages/pusat_informasi.dart';
import 'package:kemenham/pages/sejarah.dart';
import 'package:kemenham/pages/struktur.dart';
import 'package:kemenham/pages/tentang_kemenham.dart';
import 'package:kemenham/pages/tugas_fungsi.dart';
import 'package:kemenham/pages/unit_kerja.dart';
import 'package:kemenham/pages/visi_misi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/main': (context) => const MainPage(),
        '/unit-kerja': (context) => const UnitKerja(),
        '/tentang': (context) => const TentangKemenham(),
        '/tugas-fungsi': (context) => const TugasFungsi(),
        '/struktur': (context) => const Struktur(),
        '/profil-menteri': (context) => const ProfilMenteri(),
        '/visi-misi': (context) => const VisiMisi(),
        '/sejarah': (context) => const Sejarah(),
        '/prestasi': (context) => const Prestasi(),
        '/unit-kerja/sekrejen': (context) => const SekretariatJendral(),
        '/unit-kerja/dirjeninstrumen':
            (context) => const DirektoratJendralInstrumen(),
        '/unit-kerja/dirjenpelayanan':
            (context) => const DirektoratJendralPelayanan(),
        '/unit-kerja/inspektoratjendral':
            (context) => const InspektoratJendral(),
        '/unit-kerja/pusatdata': (context) => const PusatData(),

        '/unit-kerja/pusatpengembangan': (context) => const PusatPengembangan(),
        '/ham-internasional': (context) => const InstrumenHamInternasional(),
        '/ham-nasional': (context) => const InstrumenHamNasional(),
        '/pusat-informasi': (context) => const PusatInformasi(),
        '/pengaduan/2018': (context) => const Pengaduan2018(),
        '/pengaduan/2019': (context) => const Pengaduan2019(),
        '/pengaduan/2020': (context) => const Pengaduan2020(),
        '/pengaduan/2021': (context) => const Pengaduan2021(),
        '/pengaduan/2022': (context) => const Pengaduan2022(),
        '/pengaduan/2023': (context) => const Pengaduan2023(),
        '/pengaduan/2024': (context) => const Pengaduan2024(),
        '/berita-detail': (context) => const DetailBerita(),
        '/list-berita': (context) => const ListBerita(),
        '/chatbot': (context) => const ChatBot(),
      },
    );
  }
}
