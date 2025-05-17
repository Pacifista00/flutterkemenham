import 'package:flutter/material.dart';
import 'package:kemenham/components/splash_screen.dart';
import 'package:kemenham/pages/detailunitkerja/direktorat_jendral_instrumen.dart';
import 'package:kemenham/pages/detailunitkerja/direktorat_jendral_pelayanan.dart';
import 'package:kemenham/pages/detailunitkerja/inspektorat_jendral.dart';
import 'package:kemenham/pages/detailunitkerja/pusat_data.dart';
import 'package:kemenham/pages/detailunitkerja/pusat_pengembangan.dart';
import 'package:kemenham/pages/detailunitkerja/sekretariat_jendral.dart';
import 'package:kemenham/pages/prestasi.dart';
import 'package:kemenham/pages/produkhukum/instrumen_ham_internasional.dart';
import 'package:kemenham/pages/produkhukum/instrumen_ham_nasional.dart';
import 'package:kemenham/pages/profil_menteri.dart';
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
      },
    );
  }
}
