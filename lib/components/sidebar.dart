import 'package:flutter/material.dart';
import 'package:kemenham/components/end_drawer.dart';
import 'package:kemenham/pages/messagebutton/message_button.dart';

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
              decoration: const BoxDecoration(color: Color(0xFFE3C00A)),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/main',
                    (route) => false,
                  );
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
                    Navigator.pushNamed(context, '/tentang');
                  },
                ),
                ListTile(
                  title: const Text('Tugas dan Fungsi'),
                  onTap: () {
                    Navigator.pushNamed(context, '/tugas-fungsi');
                  },
                ),
                ListTile(
                  title: const Text('Struktur Organisasi'),
                  onTap: () {
                    Navigator.pushNamed(context, '/struktur');
                  },
                ),
                ListTile(
                  title: const Text('Profil Menteri dan Wakil Menteri'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profil-menteri');
                  },
                ),
                ListTile(
                  title: const Text('Visi dan Misi'),
                  onTap: () {
                    Navigator.pushNamed(context, '/visi-misi');
                  },
                ),
                ListTile(
                  title: const Text('Sejarah Berdirinya'),
                  onTap: () {
                    Navigator.pushNamed(context, '/sejarah');
                  },
                ),
                ListTile(
                  title: const Text('Prestasi'),
                  onTap: () {
                    Navigator.pushNamed(context, '/prestasi');
                  },
                ),
              ],
            ),

            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text('Unit Kerja'),
              onTap: () {
                //
                Navigator.pushNamed(context, '/unit-kerja');
              },
            ),

            ExpansionTile(
              leading: const Icon(Icons.gavel),
              title: const Text('Produk Hukum'),
              children: [
                ListTile(
                  title: const Text('Instrumen HAM Internasional'),
                  onTap: () {
                    Navigator.pushNamed(context, '/ham-internasional');
                  },
                ),
                ListTile(
                  title: const Text('Instrumen HAM Nasional'),
                  onTap: () {
                    Navigator.pushNamed(context, '/ham-nasional');
                  },
                ),
              ],
            ),

            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('Berita'),
              onTap: () {
                Navigator.pushNamed(context, '/list-berita');
              },
            ),

            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Pusat Informasi'),
              onTap: () {
                Navigator.pushNamed(context, '/pusat-informasi');
              },
            ),
          ],
        ),
      ),
      body: child,
      floatingActionButton: const FloatingChatButton(),
    );
  }
}
