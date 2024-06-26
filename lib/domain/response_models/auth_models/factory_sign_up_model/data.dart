import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	String? mobile;
	String? otp;
	List<dynamic>? factorySetupImages;
	List<dynamic>? states;
	bool? suspended;
	@JsonKey(name: '_id') 
	String? id;
	List<dynamic>? coreSpecializations;
	List<dynamic>? certificates;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	Data({
		this.mobile, 
		this.otp, 
		this.factorySetupImages, 
		this.states, 
		this.suspended, 
		this.id, 
		this.coreSpecializations, 
		this.certificates, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
