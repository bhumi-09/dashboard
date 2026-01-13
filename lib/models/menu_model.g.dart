// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) => MenuModel(
  title: json['title'] as String,
  descriptions: (json['descriptions'] as List<dynamic>)
      .map((e) => DescriptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MenuModelToJson(MenuModel instance) => <String, dynamic>{
  'title': instance.title,
  'descriptions': instance.descriptions,
};

DescriptionModel _$DescriptionModelFromJson(Map<String, dynamic> json) =>
    DescriptionModel(
      label: json['label'] as String?,
      icon: json['icon'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DescriptionModelToJson(DescriptionModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'icon': instance.icon,
      'count': instance.count,
    };
