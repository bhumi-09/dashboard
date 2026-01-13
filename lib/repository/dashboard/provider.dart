import 'package:dashboard/models/index.dart';
import 'package:dashboard/repository/base_api_provider.dart';
import 'package:dashboard/repository/url_provider.dart';

class DashboardApiProvider extends BaseApiProvider {
  Future<DashboardResponse> getDashboardData() async {
    try {
      final response = await get(UrlProvider.getDashboardData);
      return DashboardResponse.fromjson(response);
    } catch (e) {
      return DashboardResponse.withError(e.toString());
    }
  }
}
