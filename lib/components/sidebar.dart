import 'package:flutter/material.dart';
import 'package:kemenham/components/end_drawer.dart';

class Sidebar extends StatelessWidget {
  final Widget child;

  const Sidebar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/portalweb-headerlogo.png',
          width: 130,
          height: 100,
        ),
        actions: const [Navbar()],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Image.asset(
                  'assets/images/portalweb-headerlogo.png',
                  width: 300,
                  height: 100,
                ),
              ),
            ),

            ExpansionTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Tentang'),
              children: [
                ListTile(
                  title: const Text('Tentang Kementerian HAM'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/tentang');
                  },
                ),
                ListTile(
                  title: const Text('Tugas dan Fungsi'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/tugas-fungsi');
                  },
                ),
                ListTile(
                  title: const Text('Struktur Organisasi'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/struktur');
                  },
                ),
                ListTile(
                  title: const Text('Profil Menteri dan Wakil Menteri'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/profil-menteri');
                  },
                ),
                ListTile(
                  title: const Text('Visi dan Misi'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/visi-misi');
                  },
                ),
                ListTile(
                  title: const Text('Sejarah Berdirinya'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/sejarah');
                  },
                ),
                ListTile(
                  title: const Text('Prestasi'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/prestasi');
                  },
                ),
              ],
            ),

            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text('Unit Kerja'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/unit-kerja');
              },
            ),

            ExpansionTile(
              leading: const Icon(Icons.gavel),
              title: const Text('Produk Hukum'),
              children: [
                ListTile(
                  title: const Text('Instrumen HAM Nasional'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/ham-nasional');
                  },
                ),
                ListTile(
                  title: const Text('Instrumen HAM Internasional'),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      '/ham-internasional',
                    );
                  },
                ),
              ],
            ),

            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Pusat Informasi/PPID'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/ppid');
              },
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
