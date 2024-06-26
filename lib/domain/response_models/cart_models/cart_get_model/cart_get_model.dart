import 'package:json_annotation/json_annotation.dart';

import 'cart.dart';

part 'cart_get_model.g.dart';

@JsonSerializable()
class CartGetModel {
	String? message;
	Cart? cart;

	CartGetModel({this.message, this.cart});

	factory CartGetModel.fromJson(Map<String, dynamic> json) {
		return _$CartGetModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CartGetModelToJson(this);
}
