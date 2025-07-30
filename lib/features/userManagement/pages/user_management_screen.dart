import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';
import '../../../shared/widgets/app_drawer.dart';

class UserManagementScreen extends StatelessWidget {
  const UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(activeItem: 'User Management'),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: AppColors.appPrimary),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              LOGO,
              height: 40,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.appBackground,
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'User Management',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 100),
              _buildFixedSizeButton(context, 'Security House', '/security-house'),
              const SizedBox(height: 40),
              _buildFixedSizeButton(context, 'Property Owners', '/property-owners'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFixedSizeButton(BuildContext context, String label, String route) {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          context.go(route);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appPrimary,
          shape: const StadiumBorder(),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

