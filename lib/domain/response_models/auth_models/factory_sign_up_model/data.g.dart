// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      mobile: json['mobile'] as String?,
      otp: json['otp'] as String?,
      factorySetupImages: json['factorySetupImages'] as List<dynamic>?,
      states: json['states'] as List<dynamic>?,
      suspended: json['suspended'] as bool?,
      id: json['_id'] as String?,
      coreSpecializations: json['coreSpecializations'] as List<dynamic>?,
      certificates: json['certificates'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'mobile': instance.mobile,
      'otp': instance.otp,
      'factorySetupImages': instance.factorySetupImages,
      'states': instance.states,
      'suspended': instance.suspended,
      '_id': instance.id,
      'coreSpecializations': instance.coreSpecializations,
      'certificates': instance.certificates,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
