// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartGetModel _$CartGetModelFromJson(Map<String, dynamic> json) => CartGetModel(
      message: json['message'] as String?,
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartGetModelToJson(CartGetModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'cart': instance.cart,
    };
