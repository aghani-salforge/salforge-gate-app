
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';
import '../widgets/spaced_column.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Column(
          children: [
            // Top row with back and logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      BACK_LOGO,
                      height: 30,
                      width: 30,
                    ),
                    onPressed: () {
                      context.go('/login');
                    },
                  ),
                  Image.asset(
                    LOGO, // Diamonds Edge Logo
                    height: 50,
                  ),
                ],
              ),
            ),
            // Centered content
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SpacedColumn(
                      spacing: 30.0,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //SizedBox(height: 20), // move everything slightly down but still near the top
                        Text(
                          'Password Recovery',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                         // width: 320, // reduced width for tighter alignment
                        TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(fontFamily: 'Helvetica'),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14), // tighter internal spacing
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // TODO: handle request
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appPrimary,
                            foregroundColor: AppColors.appBackground,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text(
                            'Send Request',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
