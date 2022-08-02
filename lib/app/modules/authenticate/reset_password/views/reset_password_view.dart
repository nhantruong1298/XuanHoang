import 'dart:ui';

import 'package:example_nav2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../widgets/common/button/app_button.dart';
import '../../../../../widgets/input/text_input_field.dart';
import '../../../../../widgets/typography/heading_text.dart';

class ResetPasswordView extends StatelessWidget {
  static const String routeName = '/reset-password';
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
              child:
                  Image.asset('assets/images/bg-login.png', fit: BoxFit.fill)),
          ClipRRect(
            // Clip it cleanly.
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                color: Colors.black.withOpacity(0.05),
                alignment: Alignment.center,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),
                    Heading1Text(S.current.RESET_PASSWORD__RESET_PASSWORD_TEXT),
                    SizedBox(height: 160.h),
                    TextInputField(
                      hintText: S.current.RESET_PASSWORD__CURRENT_PASSWORD,
                    ),
                    SizedBox(height: 20.h),
                    TextInputField(
                      hintText: S.current.RESET_PASSWORD__NEW_PASSWORD,
                    ),
                    SizedBox(height: 20.h),
                    TextInputField(
                      hintText: S.current.RESET_PASSWORD__RE_ENTER_NEW_PASSWORD,
                    ),
                    SizedBox(height: 80.h),
                    AppButton(
                      text: S.current.RESET_PASSWORD__RESET_PASSWORD_TEXT,
                      onTap: () {},
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
