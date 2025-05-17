import 'package:flutter/material.dart';
import 'package:kemenham/components/sidebar.dart';
import 'package:kemenham/components/footer.dart';

class InstrumenHamInternasional extends StatelessWidget {
  const InstrumenHamInternasional({super.key});

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
                    'Instrumen HAM Internasional',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF242458),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/1.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Universal Declaration of\nHuman Rights',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'International Covenant\nof Civil and Political\nRights',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'International Covenant\nof Economic, Social\nand Cultural Rights',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'International Convention\non the Elimination of\nAll Forms of Racial\nDiscrimination',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention against Torture\nand Other Cruel, Inhuman\nor Degrading Treatment\nor Punishment',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention on the\nElimination of All Forms\nof Discrimination\nAgainst Women',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention on the Rights\nof the Child',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention on the\nRights of Persons with\nDisabilities',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention on the\nProtection of the Rights\nof All Migrant Workers and\nMembers of Their Families',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Convention for the\nProtection of All Persons\nfrom Enforced\nDisappearance',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/bhr.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'United Nations Guiding\nPrinciples on Business and\nHuman Rights',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/un.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Universal Periodic Review',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/2.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Rule of Law Truth\nCommision',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
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
