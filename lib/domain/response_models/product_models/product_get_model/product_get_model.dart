import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'product_get_model.g.dart';

@JsonSerializable()
class ProductGetModel {
	String? message;
	Data? data;
	int? total;
	int? limit;
	int? page;
	int? pages;

	ProductGetModel({
		this.message, 
		this.data, 
		this.total, 
		this.limit, 
		this.page, 
		this.pages, 
	});

	factory ProductGetModel.fromJson(Map<String, dynamic> json) {
		return _$ProductGetModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ProductGetModelToJson(this);
}
