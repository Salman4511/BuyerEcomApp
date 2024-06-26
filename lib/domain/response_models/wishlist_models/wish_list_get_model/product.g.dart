// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['_id'] as String?,
      factoryId: json['factoryId'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      subcategory: json['subcategory'] as String?,
      setSize: json['setSize'] as String?,
      setColor: json['setColor'] as String?,
      noOfPairs: (json['noOfPairs'] as num?)?.toInt(),
      productBrand: json['productBrand'] as String?,
      minPrice: (json['minPrice'] as num?)?.toInt(),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      sampleImage: json['sampleImage'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      reviews: json['reviews'] as List<dynamic>?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'factoryId': instance.factoryId,
      'name': instance.name,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'setSize': instance.setSize,
      'setColor': instance.setColor,
      'noOfPairs': instance.noOfPairs,
      'productBrand': instance.productBrand,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'sampleImage': instance.sampleImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'reviews': instance.reviews,
      '__v': instance.v,
    };
