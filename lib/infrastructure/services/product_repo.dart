import 'package:dio/dio.dart';
import 'package:ecommerce_seller/domain/response_models/product_models/product_details_model/product_details_model.dart';
import 'package:ecommerce_seller/domain/response_models/product_models/product_get_model/product_get_model.dart';
import 'package:ecommerce_seller/domain/response_models/product_models/update_product_model/product.dart';
import 'package:ecommerce_seller/domain/response_models/product_models/update_product_model/update_product_model.dart';

class ProductRepo{


  Future<ProductGetModel> productGet() async {
    try {
      final response = await Dio().get(
          "https://sanjay-tiwari-backend.vercel.app/api/productList/get",
         );

      if (response.statusCode == 200) {
        print(response.data);
        return ProductGetModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

   Future<UpdateProductModel> productUpdate(Product product, dynamic productId ) async {
    try {
      final response = await Dio().put(
        "https://sanjay-tiwari-backend.vercel.app/api/updateProduct/$productId",
        data: product
      );

      if (response.statusCode == 200) {
        print(response.data);
        return UpdateProductModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  
  Future<UpdateProductModel> productAdd(Product product) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/addProduct/add",
          data: product);

      if (response.statusCode == 200) {
        print(response.data);
        return UpdateProductModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ProductDetailsModel> productDetails(dynamic productId) async {
    try {
      final response = await Dio().get(
          "https://sanjay-tiwari-backend.vercel.app/api/product/getbyId/$productId",
        );

      if (response.statusCode == 200) {
        print(response.data);
        return ProductDetailsModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
  
}