// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_remove_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishlistRemoveModel _$WishlistRemoveModelFromJson(Map<String, dynamic> json) =>
    WishlistRemoveModel(
      message: json['message'] as String?,
      wishlist: json['wishlist'] == null
          ? null
          : Wishlist.fromJson(json['wishlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlistRemoveModelToJson(
        WishlistRemoveModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'wishlist': instance.wishlist,
    };
