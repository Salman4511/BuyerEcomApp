// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factory_sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactorySignUpModel _$FactorySignUpModelFromJson(Map<String, dynamic> json) =>
    FactorySignUpModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FactorySignUpModelToJson(FactorySignUpModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
