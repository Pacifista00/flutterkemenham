import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class UnitKerja extends StatelessWidget {
  const UnitKerja({super.key});

  @override
  Widget build(BuildContext context) {
    return Sidebar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Image.asset('assets/images/cover.png'), const Footer()],
        ),
      ),
    );
  }
}
