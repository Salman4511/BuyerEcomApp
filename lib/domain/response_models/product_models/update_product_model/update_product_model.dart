import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'update_product_model.g.dart';

@JsonSerializable()
class UpdateProductModel {
	String? message;
	Product? product;

	UpdateProductModel({this.message, this.product});

	factory UpdateProductModel.fromJson(Map<String, dynamic> json) {
		return _$UpdateProductModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UpdateProductModelToJson(this);
}
