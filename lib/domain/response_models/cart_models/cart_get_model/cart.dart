import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
	@JsonKey(name: '_id') 
	String? id;
	@JsonKey(name: 'BuyerId') 
	String? buyerId;
	List<dynamic>? items;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	Cart({
		this.id, 
		this.buyerId, 
		this.items, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

	Map<String, dynamic> toJson() => _$CartToJson(this);
}
