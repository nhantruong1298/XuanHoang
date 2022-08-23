import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final ApiService _apiService;
  final formKey = GlobalKey<FormBuilderState>();
  final String NEW_PASSWORD_KEY = 'newPassword';
  final String RETRY_NEW_PASSWORD_KEY = 'retryNewPassword';
  RxBool obscurePassword = true.obs;
  RxBool obscureRetryPassword = true.obs;
  ChangePasswordController(this._apiService);

  @override
  void onInit() {
    super.onInit();
  }

  void onChangePasswordPressed() async {
    formKey.currentState?.validate();

    final newPassword =
        formKey.currentState?.fields[NEW_PASSWORD_KEY]?.value ?? '';
    final retypePassword =
        formKey.currentState?.fields[RETRY_NEW_PASSWORD_KEY]?.value ?? '';

    String? message = formKey.currentState?.fields[NEW_PASSWORD_KEY]?.errorText;

    if (message != null) {
      showSnackbar(message: message, backgroundColor: AppColors.errorColor);
      return;
    }

    if (newPassword != retypePassword) {
      showSnackbar(
          message: 'Mật khẩu không trùng khớp',
          backgroundColor: AppColors.errorColor);
      return;
    }

    try {
      await _apiService.changePassword(newPassword, retypePassword);

      showConfirmDialog(
          title: 'Thông báo',
          content: Text('Đổi mật khẩu thành công'),
          textConfirm: 'Xác nhận',
          onConfirm: () {
            ApiService.to.clearToken();
            AuthService.to.logout();
            Get.offNamed(LoginView.routeName);
          });
    } catch (error) {
      print(error);
    }
  }

  void onShowPasswordPressed() {
    obscurePassword.value = !obscurePassword.value;
  }

  void onShowRetryPasswordPressed() {
    obscureRetryPassword.value = !obscureRetryPassword.value;
  }
}
