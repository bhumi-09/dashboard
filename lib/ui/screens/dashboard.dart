import 'package:dashboard/common/index.dart';
import 'package:dashboard/models/index.dart';
import 'package:dashboard/repository/dashboard/provider.dart';
import 'package:dashboard/repository/dashboard/repository.dart';
import 'package:dashboard/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<MenuModel>? data;

  // @override
  // void initState() {
  //   super.initState();
  //   _loadData();
  // }

  // Future<void> _loadData() async {
  //   try {
  //     final repository = DashboardRepository(DashboardApiProvider());
  //     final response = await repository.getDashboardData();

  //     if (!mounted) return;

  //     setState(() {
  //       data = response.data;
  //     });
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: FontFamily.poppins),
                ),
                const SizedBox(height: 10),
                Text(
                  'Your recent transaction activity and all...',
                  style: TextStyle(fontSize: 14, fontFamily: FontFamily.poppins),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.calendar_month_rounded, color: Colors.grey.shade600),
                      const SizedBox(width: 4),
                      const Text('2025-12-29', style: TextStyle(fontFamily: FontFamily.poppins)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                DashboardSection(title: 'Subsidised Count', dashboardData: Data.subsidisedCount),
                const SizedBox(height: 20),
                DashboardSection(title: 'Non-Subsidised Count', dashboardData: Data.nonSubsidisedCount),
                const SizedBox(height: 20),
                DashboardSection(title: 'Available Balance', dashboardData: Data.availableBalance),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
