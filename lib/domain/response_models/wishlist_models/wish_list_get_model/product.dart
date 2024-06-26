import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
	@JsonKey(name: '_id') 
	String? id;
	String? factoryId;
	String? name;
	String? category;
	String? subcategory;
	String? setSize;
	String? setColor;
	int? noOfPairs;
	String? productBrand;
	int? minPrice;
	int? maxPrice;
	String? sampleImage;
	DateTime? createdAt;
	List<dynamic>? reviews;
	@JsonKey(name: '__v') 
	int? v;

	Product({
		this.id, 
		this.factoryId, 
		this.name, 
		this.category, 
		this.subcategory, 
		this.setSize, 
		this.setColor, 
		this.noOfPairs, 
		this.productBrand, 
		this.minPrice, 
		this.maxPrice, 
		this.sampleImage, 
		this.createdAt, 
		this.reviews, 
		this.v, 
	});

	factory Product.fromJson(Map<String, dynamic> json) {
		return _$ProductFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ProductToJson(this);
}
