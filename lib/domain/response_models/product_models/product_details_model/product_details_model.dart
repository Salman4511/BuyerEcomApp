import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'product_details_model.g.dart';

@JsonSerializable()
class ProductDetailsModel {
	String? message;
	Data? data;

	ProductDetailsModel({this.message, this.data});

	factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
		return _$ProductDetailsModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ProductDetailsModelToJson(this);
}
