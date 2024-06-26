// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListGetModel _$WishListGetModelFromJson(Map<String, dynamic> json) =>
    WishListGetModel(
      message: json['message'] as String?,
      wishlist: json['wishlist'] == null
          ? null
          : Wishlist.fromJson(json['wishlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishListGetModelToJson(WishListGetModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'wishlist': instance.wishlist,
    };
