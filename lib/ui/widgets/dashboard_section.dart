import 'package:dashboard/common/styles.dart';
import 'package:dashboard/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class DashboardSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> dashboardData;
  const DashboardSection({super.key, required this.title, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: FontFamily.poppins),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dashboardData.length,
          itemBuilder: (context, index) {
            final item = dashboardData[index];
            return MenuInfo(title: item['title'], icon: item['icon'], count: item['count']);
          },
        ),
      ],
    );
  }
}
