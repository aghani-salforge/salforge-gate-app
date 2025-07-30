import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';

class OwnerCredentialsScreen extends StatelessWidget {
  final String title;
  final String name;
  final String phone;
  final String propertyDetails;

  const OwnerCredentialsScreen({
    super.key,
    required this.title,
    required this.name,
    required this.phone,
    required this.propertyDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back + Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(BACK_LOGO, height: 30, width: 30),
                    onPressed: () => context.go('/property-owners'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(LOGO, height: 40),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Title
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Owner Details with icons
              _buildDetailRow(Icons.person, 'Name', name, AppColors.appPrimary),
              const SizedBox(height: 16),
              _buildDetailRow(Icons.phone, 'Phone No.', phone, AppColors.appPrimary),
              const SizedBox(height: 16),
              _buildDetailRow(Icons.home, 'Property Details', propertyDetails, AppColors.appPrimary),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value, Color appPrimary) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.appPrimary),
        const SizedBox(width: 12),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '$label: ',
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Helvetica',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: value,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
