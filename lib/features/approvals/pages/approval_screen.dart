import 'package:flutter/material.dart';
import 'package:salforge_gate_app/core/constants/assets.dart';
import 'package:salforge_gate_app/core/theme/colors.dart';
import '../../../shared/widgets/app_drawer.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({super.key});

  final List<Map<String, String>> mockApprovals = const [
    {
      'property': 'A-101',
      'role': 'Owner',
      'name': 'John Doe',
      'phone': '+1 324 78 99 10',
      'time': '10:30 AM, 02 July',
    },
    {
      'property': 'A-101',
      'role': 'Visitor',
      'name': 'Sameul',
      'phone': '+1 365 90 11 34',
      'time': '10:30 AM, 004 july',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      drawer: const AppDrawer(activeItem: 'Approvals'),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Approvals',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mockApprovals.length,
                itemBuilder: (context, index) {
                  final approval = mockApprovals[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: AppColors.appPrimary.withOpacity(0.3), width: 1.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _detailRow(Icons.home, 'Property: ${approval['property']}'),
                        _detailRow(Icons.person, '${approval['role']}: ${approval['name']}'),
                        _detailRow(Icons.phone, 'Phone: ${approval['phone']}'),
                        _detailRow(Icons.access_time, 'Time: ${approval['time']}'),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildActionButton('Approve', AppColors.appPrimary),
                            _buildActionButton('Reject', AppColors.appPrimary),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 22, color: AppColors.appPrimary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left, // ⬅️ Ensure left alignment
              style: _textStyle(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, Color color) {
    return SizedBox(
      width: 120,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Handle logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Helvetica',
    );
  }
}
