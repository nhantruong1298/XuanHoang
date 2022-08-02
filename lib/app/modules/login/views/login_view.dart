import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../widgets/common/button/app_button.dart';
import '../../../../widgets/input/text_input_field.dart';
import '../../../../widgets/typography/heading_text.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            BlurBackGround(
              sigma: 0,
            ),
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
                      SizedBox(height: 20.h),
                      Heading1Text(S.current.SIGN_IN__HELLO),
                      SizedBox(height: 5.h),
                      Heading2Text(S.current.SIGN_IN__PLEASE_LOGIN),
                      SizedBox(height: 100.h),
                      TextInputField(
                        hintText: S.current.SIGN_IN__USERNAME,
                        name: 'username',
                      ),
                      SizedBox(height: 23.h),
                      TextInputField(
                        hintText: S.current.SIGN_IN__PASSWORD,
                        name: 'password',
                      ),
                      SizedBox(height: 80.h),
                      AppButton(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.defaultMRadius),
                        text: S.current.SIGN_IN__SIGN_IN_TEXT,
                        onTap: () {
                          Get.toNamed(HomeView.routeName);
                        },
                      ),
                      const Spacer(),
                      Center(
                        child: Text(S.current.SIGN_IN__LICENSE_DESCRIPTION,
                            style:
                                TextStyle(fontSize: 11, color: Colors.white)),
                      ),
                    ]),
              ),
            ))
          ],
        ));
  }
}
