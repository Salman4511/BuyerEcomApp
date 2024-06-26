import 'package:json_annotation/json_annotation.dart';

part 'wishlist.g.dart';

@JsonSerializable()
class Wishlist {
	@JsonKey(name: '_id') 
	String? id;
	String? buyerId;
	List<dynamic>? products;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	Wishlist({
		this.id, 
		this.buyerId, 
		this.products, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory Wishlist.fromJson(Map<String, dynamic> json) {
		return _$WishlistFromJson(json);
	}

	Map<String, dynamic> toJson() => _$WishlistToJson(this);
}
