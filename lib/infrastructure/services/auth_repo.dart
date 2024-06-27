import 'package:dio/dio.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/buyer_login_model.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/buyer_signup_model.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/factory_otp_model.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/factory_sign_up_model/factory_sign_up_model.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/forget_password.dart';
import 'package:ecommerce_seller/domain/response_models/auth_models/otp_verify_model.dart';

class AuthRepo {
  Future<BuyerSignUpModel> buyerSignUp(dynamic mobile) async {
    try {
      final response =
          await Dio().post("https://sanjay-tiwari-backend.vercel.app/api/signup",
          data:<String,dynamic>{
            "mobile":mobile
          } 
          );

      if (response.statusCode == 200) {
        print(response.data);
        return BuyerSignUpModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<OtpVerifyModel> otpVerify(dynamic mobile, dynamic otp) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/verify",
          data: <String, dynamic>{"mobile": mobile,"otp":otp});

      if (response.statusCode == 200) {
        print(response.data);
        return OtpVerifyModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<BuyerLoginModel> buyerLogin(dynamic mobile) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/login",
          data: <String, dynamic>{"mobile": mobile,});

      if (response.statusCode == 200) {
        print(response.data);
        return BuyerLoginModel.fromJson(response.data);
      } else if (response.statusCode == 400) {
        print(response.data);
        return Future.error(response.data);  
            } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<FactorySignUpModel> factorySignUp(dynamic mobile) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/factorySignup",
          data: <String, dynamic>{
            "mobile": mobile,
          });

      if (response.statusCode == 200) {
        print(response.data);
        return FactorySignUpModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ForgetPasswordModel> forgetPassword(dynamic mobile) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/forgetpassword",
          data: <String, dynamic>{
            "mobile": mobile,
          });

      if (response.statusCode == 200) {
        print(response.data);
        return ForgetPasswordModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<FactoryOtpVerificationModel> factoryOtpVerification(
      dynamic mobile, dynamic otp) async {
    try {
      final response = await Dio().post(
          "https://sanjay-tiwari-backend.vercel.app/api/otpVerification",
          data: <String, dynamic>{
            "mobile": mobile,
            "otp": otp,
          });

      if (response.statusCode == 200) {
        print(response.data);
        return FactoryOtpVerificationModel.fromJson(response.data);
      } else {
        throw Exception("Error occured");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
