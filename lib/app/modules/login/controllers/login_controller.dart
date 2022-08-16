import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();
  final String USER_NAME_KEY = 'userName';
  final String PASSWORD_KEY = 'password';
  final ApiService _apiService;
  LoginController(this._apiService);

  void onLoginPressed() async {
    try {
      final response = await _apiService.login(
          formKey.currentState!.fields[USER_NAME_KEY]!.value,
          formKey.currentState!.fields[PASSWORD_KEY]!.value);

      if (response.token != null && response.profile != null) {
        Get.find<ApiService>().setToken(response.token!);
        Get.find<AuthService>().login(response.profile!);
        final image = await _apiService
            .loadFile("/2022/08/13/8/docheck/637960242326574498.png");
        Get.offNamed(HomeView.routeName);
      }
    } catch (error) {
      if (error is DioError) {
        Get.snackbar(
          'Error',
          error.response?.data ?? '',
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          backgroundColor: Colors.white,
        );
        return;
      }
      print(error);
    }

    return;
  }
}
