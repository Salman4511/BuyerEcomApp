import 'package:json_annotation/json_annotation.dart';

import 'wishlist.dart';

part 'wishlist_remove_model.g.dart';

@JsonSerializable()
class WishlistRemoveModel {
	String? message;
	Wishlist? wishlist;

	WishlistRemoveModel({this.message, this.wishlist});

	factory WishlistRemoveModel.fromJson(Map<String, dynamic> json) {
		return _$WishlistRemoveModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$WishlistRemoveModelToJson(this);
}
