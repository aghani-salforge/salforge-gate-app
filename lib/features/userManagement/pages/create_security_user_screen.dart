import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';

class CreateSecurityUserScreen extends StatelessWidget {
  const CreateSecurityUserScreen({super.key});

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
                    onPressed: () => context.go('/security-house'),
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
                  'Create Security User',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              _buildInputField(hint: 'Email'),
              const SizedBox(height: 10),

              _buildInputField(hint: 'Password', obscureText: true),
              const SizedBox(height: 10),

              _buildInputField(hint: 'Confirm Password', obscureText: true),
              const SizedBox(height: 20),

              // Matching Button
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 56, // Match this to TextField height
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: ElevatedButton(
                      onPressed: () => context.go('/mock-security-user-list'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appPrimary,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Create',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Helvetica',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({required String hint, bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 56,
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(fontFamily: 'Helvetica'),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

}
