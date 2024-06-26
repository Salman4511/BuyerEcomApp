import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'factory_sign_up_model.g.dart';

@JsonSerializable()
class FactorySignUpModel {
	String? message;
	Data? data;

	FactorySignUpModel({this.message, this.data});

	factory FactorySignUpModel.fromJson(Map<String, dynamic> json) {
		return _$FactorySignUpModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$FactorySignUpModelToJson(this);
}
