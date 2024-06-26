import 'package:json_annotation/json_annotation.dart';

import 'wishlist.dart';

part 'wish_list_get_model.g.dart';

@JsonSerializable()
class WishListGetModel {
	String? message;
	Wishlist? wishlist;

	WishListGetModel({this.message, this.wishlist});

	factory WishListGetModel.fromJson(Map<String, dynamic> json) {
		return _$WishListGetModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$WishListGetModelToJson(this);
}
