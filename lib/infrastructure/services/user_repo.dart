import 'package:dio/dio.dart';
import 'package:ecommerce_seller/domain/response_models/buyer_model/buyer_details_model.dart';

class UserRepo{
  Future<BuyerDetailsModel> buyerModel(dynamic userId) async {
    try {
      final response = await Dio().get(
          "https://sanjay-tiwari-backend.vercel.app/api/accountDetail/$userId",
        );

      if (response.statusCode == 200) {
        print(response.data);
        return BuyerDetailsModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}