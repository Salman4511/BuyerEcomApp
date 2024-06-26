class WishListAddModel {
  String? message;
  Wishlist? wishlist;

  WishListAddModel({this.message, this.wishlist});

  WishListAddModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    wishlist = json['wishlist'] != null
        ? new Wishlist.fromJson(json['wishlist'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.wishlist != null) {
      data['wishlist'] = this.wishlist!.toJson();
    }
    return data;
  }
}

class Wishlist {
  String? sId;
  String? buyerId;
  List<String>? products;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Wishlist(
      {this.sId,
      this.buyerId,
      this.products,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Wishlist.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    buyerId = json['buyerId'];
    products = json['products'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['buyerId'] = this.buyerId;
    data['products'] = this.products;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
