// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGetModel _$ProductGetModelFromJson(Map<String, dynamic> json) =>
    ProductGetModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      total: (json['total'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pages: (json['pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductGetModelToJson(ProductGetModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };
