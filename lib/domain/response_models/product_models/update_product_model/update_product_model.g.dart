// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductModel _$UpdateProductModelFromJson(Map<String, dynamic> json) =>
    UpdateProductModel(
      message: json['message'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProductModelToJson(UpdateProductModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'product': instance.product,
    };
