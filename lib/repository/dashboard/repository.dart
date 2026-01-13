import 'package:dashboard/models/index.dart';
import 'package:dashboard/repository/dashboard/provider.dart';

class DashboardRepository {
  final DashboardApiProvider _dashboardProvider;

  DashboardRepository(this._dashboardProvider);
  DashboardApiProvider get dashboardProvider => _dashboardProvider;

  Future<DashboardResponse> getDashboardData() async {
    return await _dashboardProvider.getDashboardData();
  }
}
