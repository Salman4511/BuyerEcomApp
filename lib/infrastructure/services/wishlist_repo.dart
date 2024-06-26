import 'package:dio/dio.dart';
import 'package:ecommerce_seller/domain/response_models/wishlist_models/wish_list_get_model/wish_list_get_model.dart';
import 'package:ecommerce_seller/domain/response_models/wishlist_models/wishlist_add_model.dart';
import 'package:ecommerce_seller/domain/response_models/wishlist_models/wishlist_remove_model/wishlist_remove_model.dart';

class WishlistRepo{
  Future<WishListAddModel> addToWishlist(dynamic buyerId, dynamic productId) async {
    try {
      final response = await Dio().post(
        "https://sanjay-tiwari-backend.vercel.app/api/wishlist/add",
        data: {
          "buyerId": buyerId,
          "productId": productId
          },
      );

      if (response.statusCode == 200) {
        print(response.data);
        return WishListAddModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

Future<WishListGetModel> getWishlist(dynamic buyerId) async {
    try {
      final response = await Dio().get(
        "https://sanjay-tiwari-backend.vercel.app/api/wishlist/$buyerId",
        
      );

      if (response.statusCode == 200) {
        print(response.data);
        return WishListGetModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

Future<WishlistRemoveModel> removeFromWishlist(
      dynamic buyerId, dynamic productId) async {
    try {
      final response = await Dio().post(
        "https://sanjay-tiwari-backend.vercel.app/api/wishlist/remove",
        data: {"buyerId": buyerId, "productId": productId},
      );

      if (response.statusCode == 200) {
        print(response.data);
        return WishlistRemoveModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

}