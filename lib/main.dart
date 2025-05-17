import 'package:flutter/material.dart';
import 'package:kemenham/components/splash_screen.dart';
import 'package:kemenham/pages/unit_kerja.dart';

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
      routes: {'/unit-kerja': (context) => const UnitKerja()},
    );
  }
}
