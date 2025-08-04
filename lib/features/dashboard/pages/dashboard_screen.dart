
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';
import 'package:salforge_gate_app/features/dashboard/widgets/spaced_column.dart';
import 'package:salforge_gate_app/shared/widgets/app_drawer.dart';
class DashboardScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: AppDrawer(activeItem: 'Gate Control'), // Set the active menu item
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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SpacedColumn(
            spacing: 40,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Gate Control',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                GATE,
                height: 180,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appPrimary,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                ),
                child: Text(
                  'Open',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 16,
                    color: AppColors.appBackground,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appPrimary,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                ),
                child: Text(
                  'Close',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 16,
                    color: AppColors.appBackground,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Powered by ',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 12),
                  ),
                  Image.asset(
                    SALFORGE_LOGO,
                    height: 18,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
