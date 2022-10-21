import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/data_source/data_storage.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();
  final DataStorage _dataStorage;
  final String USER_NAME_KEY = 'userName';
  final String PASSWORD_KEY = 'password';
  RxBool obscurePassword = true.obs;
  // RxBool showErrorView = false.obs;
  String errorText = '';

  RxBool isLoading = false.obs;
  final ApiService _apiService;
  LoginController(this._apiService,this._dataStorage);

  void onLoginPressed() async {
    isLoading.value = true;
    try {
      final userName = formKey.currentState!.fields[USER_NAME_KEY]!.value;
      final password = formKey.currentState!.fields[PASSWORD_KEY]!.value;
      final response = await _apiService.login(userName, password);

      if (response.token != null && response.profile != null) {
        Get.find<ApiService>().setToken(response.token!);
        Get.find<AuthService>().login(response.profile!);

        //save token   
        await _dataStorage.setString(
            DataStorage.TOKEN_KEY, response.token?.accessToken ?? '');

        Get.offNamed(HomeView.routeName);
      }
    } catch (error) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.response:
            {
              errorText = error.response?.data;
            }

            break;
          default:
            {
              errorText =
                  '${error.type} \n ${error.message} \n ${error.response} ';
            }
            break;
        }
      } else {
        if (error.toString().length > 200) {
          errorText = error.toString().substring(0, 200);
        } else {
          errorText = error.toString();
        }
      }

      showSnackbar(
        message: errorText,
        title: 'Error',
        backgroundColor: AppColors.errorColor,
        duration: Duration(milliseconds: 1500),
      );
    } finally {
      isLoading.value = false;
    }
  }

  void onShowPasswordPressed() {
    obscurePassword.value = !obscurePassword.value;
  }
}
