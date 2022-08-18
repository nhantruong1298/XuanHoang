import 'dart:ui';

import 'package:example_nav2/app/modules/authenticate/change_password/controllers/change_password_controller.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../../../../widgets/common/button/app_button.dart';
import '../../../../../widgets/input/text_input_field.dart';
import '../../../../../widgets/typography/heading_text.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  static const String path = '/change-password';
  static const String routeName = '${HomeView.routeName}/$path';
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(Assets.images.arrowBackIcon.path,
                height: 30, width: 30, fit: BoxFit.scaleDown),
          )),
      body: Stack(
        children: [
          BlurBackGround(),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: FormBuilder(
                key: controller.formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.h),
                      Heading1Text(
                          S.current.RESET_PASSWORD__RESET_PASSWORD_TEXT),
                      SizedBox(height: 150.h),
                      // TextInputField(
                      //   hintText: S.current.RESET_PASSWORD__CURRENT_PASSWORD,
                      // ),
                      SizedBox(height: 20.h),
                      TextInputField(
                        hintText: S.current.RESET_PASSWORD__NEW_PASSWORD,
                        name: controller.NEW_PASSWORD_KEY,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Mật khẩu không được để trống'),
                          FormBuilderValidators.minLength(6,
                              errorText: 'Mật khẩu tối đa 6 kí tự'),
                        ]),
                      ),
                      SizedBox(height: 20.h),
                      TextInputField(
                        hintText:
                            S.current.RESET_PASSWORD__RE_ENTER_NEW_PASSWORD,
                        name: controller.RETRY_NEW_PASSWORD_KEY,
                      ),
                      SizedBox(height: 80.h),
                      AppButton(
                        text: S.current.RESET_PASSWORD__RESET_PASSWORD_TEXT,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          controller.onChangePasswordPressed();
                        },
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
