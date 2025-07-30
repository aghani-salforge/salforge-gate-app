import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';

class SecurityHouseScreen extends StatefulWidget {
  const SecurityHouseScreen({super.key});

  @override
  State<SecurityHouseScreen> createState() => _SecurityHouseScreenState();
}

class _SecurityHouseScreenState extends State<SecurityHouseScreen> {
  bool _userAdded = false;

  void _handleAddUser() {
    setState(() {
      _userAdded = true;
    });

    // Navigate using GoRouter
    context.go('/create-security-user');
  }

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
              // Top Row: Back Icon and Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(BACK_LOGO, height: 30, width: 30),
                    onPressed: () => context.go('/user-management'), // GoRouter-based back
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 4),
                    child: Image.asset(LOGO, height: 40),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Title
              const Center(
                child: Text(
                  'Security House\nManagement',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 100),

              // Instructions
              if (!_userAdded)
                const Center(
                  child: Text(
                    '“Press the add button to\nconfigure the security house user”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),

              const Spacer(),

              // +Add Button
              if (!_userAdded)
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: _handleAddUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.appPrimary,
                      shape: const StadiumBorder(),
                      minimumSize: const Size(90, 44),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text(
                      '+Add',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
