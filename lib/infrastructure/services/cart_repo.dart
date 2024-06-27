import 'package:dio/dio.dart';
import 'package:ecommerce_seller/domain/response_models/cart_models/cart_get_model/cart_get_model.dart';

class CartRepo{

  Future<CartGetModel> getCart(dynamic buyerId) async {
    try {
      final response = await Dio().get(
        "https://sanjay-tiwari-backend.vercel.app/api/viewCart/$buyerId",
      );

      if (response.statusCode == 200) {
        print(response.data);
        return CartGetModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}