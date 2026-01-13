import 'package:dashboard/models/index.dart';

class DashboardResponse {
  bool? status;
  String? message;
  List<MenuModel>? data;

  DashboardResponse(this.status, this.message, this.data);

  DashboardResponse.fromjson(Map<String, dynamic> json)
    : status = json['status'],
      message = json['message'],
      data = (json['data'] as List<dynamic>?)?.map((e) => MenuModel.fromJson(e)).toList() ?? [];

  DashboardResponse.withError(this.message) : status = false, data = null;
}
