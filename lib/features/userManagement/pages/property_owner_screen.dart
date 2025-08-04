import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';

class PropertyOwnersScreen extends StatelessWidget {
  const PropertyOwnersScreen({super.key});

  final List<Map<String, String>> mockOwners = const [
    {
      'title': 'PO1 Credentials',
      'name': 'John Doe',
      'phone': '+1 (345) 555-1234',
      'propertyDetails': 'Block 5, Villa 3B, Diamond\'s Edge',
    },
    {
      'title': 'PO2 Credentials',
      'name': 'Sarah Smith',
      'phone': '+1 (555) 123-9876',
      'propertyDetails': 'Block 8, Villa 2A, Diamond\'s Edge',
    },
    {
      'title': 'PO3 Credentials',
      'name': 'Michael Lee',
      'phone': '+1 (777) 654-3210',
      'propertyDetails': 'Block 3, Villa 1C, Diamond\'s Edge',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back + Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(BACK_LOGO, height: 30, width: 30),
                    onPressed: () => context.go('/user-management'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(LOGO, height: 40),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Property Owners',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // List View
              Expanded(
                child: ListView.builder(
                  itemCount: mockOwners.length,
                  itemBuilder: (context, index) {
                    final owner = mockOwners[index];
                    return GestureDetector(
                      onTap: () => context.go('/owner-credentials', extra: owner),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Owner ${index + 1}', // Shown on list
                              style: const TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // TODO: Handle info tap
                                  },
                                  child: Image.asset(INFO_LOGO, height: 26, width: 26),
                                ),
                                const SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {
                                    // TODO: Handle delete
                                  },
                                  child: Image.asset(DELETE_LOGO, height: 26, width: 26),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
