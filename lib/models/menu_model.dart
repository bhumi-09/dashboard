import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class MenuModel {
  final String title;
  final List<DescriptionModel> descriptions;

  MenuModel({required this.title, required this.descriptions});

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);

  Map<String, dynamic> toJson() => _$MenuModelToJson(this);
}

@JsonSerializable()
class DescriptionModel {
  final String? label;
  final String? icon;
  final int? count;

  DescriptionModel({this.label, this.icon, this.count});

  factory DescriptionModel.fromJson(Map<String, dynamic> json) => _$DescriptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionModelToJson(this);
}

class Data {
  static List<Map<String, dynamic>> subsidisedCount = [
    {'title': "Light Snacks", 'icon': Icons.food_bank_rounded, 'count': 1},
    {'title': "Heavy Snacks", 'icon': Icons.forklift, 'count': 0},
    {'title': "Tea", 'icon': Icons.palette, 'count': 5},
    {'title': "Dinner", 'icon': Icons.dinner_dining, 'count': 1},
    {'title': "Lunch", 'icon': Icons.lunch_dining, 'count': 3},
    {'title': "Coffee", 'icon': Icons.coffee, 'count': 4},
  ];

  static List<Map<String, dynamic>> nonSubsidisedCount = [
    {'title': "Light Snacks", 'icon': Icons.food_bank_rounded, 'count': 2},
    {'title': "Heavy Snacks", 'icon': Icons.forklift, 'count': 3},
    {'title': "Tea", 'icon': Icons.palette, 'count': 4},
    {'title': "Dinner", 'icon': Icons.dinner_dining, 'count': 1},
    {'title': "Lunch", 'icon': Icons.lunch_dining, 'count': 3},
    {'title': "Coffee", 'icon': Icons.coffee, 'count': 5},
  ];

  static List<Map<String, dynamic>> availableBalance = [
    {'title': "Light Snacks", 'icon': Icons.food_bank_rounded, 'count': 10},
    {'title': "Heavy Snacks", 'icon': Icons.forklift, 'count': 8},
    {'title': "Tea", 'icon': Icons.palette, 'count': 9},
    {'title': "Dinner", 'icon': Icons.dinner_dining, 'count': 10},
    {'title': "Lunch", 'icon': Icons.lunch_dining, 'count': 8},
    {'title': "Coffee", 'icon': Icons.coffee, 'count': 7},
  ];
}
