import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/colors.dart';

class AppDrawer extends StatelessWidget {
  final String activeItem;

  const AppDrawer({Key? key, required this.activeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(30),
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  children: [
                    _buildDrawerItem(context, Icons.person, 'User Management', '/user-management'),
                    _buildDrawerItem(context, Icons.shield_outlined, 'Gate Control', '/dashboard'),
                    _buildDrawerItem(context, Icons.verified, 'Approvals', '/approvals'),
                    _buildDrawerItem(context, Icons.lock_outline, 'Change Password', '/change-password'),
                    _buildDrawerItem(context, Icons.logout, 'Logout', ''),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Powered by Salforge',
                  style: TextStyle(fontSize: 12, fontFamily: 'Helvetica', color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1B958A), Color(0xFF23C6A9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: AppColors.appPrimary, size: 30),
          ),
          SizedBox(width: 12),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Helvetica'),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String label, String route) {
    final bool isActive = label == activeItem;

    return Container(
      decoration: isActive
          ? BoxDecoration(
        color: AppColors.appPrimary.withOpacity(0.1),
        border: Border(left: BorderSide(color: AppColors.appPrimary, width: 4)),
      )
          : null,
      child: ListTile(
        leading: Icon(icon, color: AppColors.appPrimary),
        title: Text(
          label,
          style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isActive ? AppColors.appPrimary : Colors.black,
          ),
        ),
        onTap: () {
          Navigator.pop(context); // Close drawer
          if (label == 'Logout') {
            // Add logout logic here
          } else if (label != activeItem) {
            context.go(route);
          }
        },
      ),
    );
  }
}
