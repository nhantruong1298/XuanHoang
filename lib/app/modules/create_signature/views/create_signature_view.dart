import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature/signature.dart';

class CreateSignatureView extends StatefulWidget {
  const CreateSignatureView({Key? key}) : super(key: key);

  @override
  State<CreateSignatureView> createState() => _CreateSignatureViewState();
}

class _CreateSignatureViewState extends State<CreateSignatureView> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: AppColors.primaryDarkColor,
    exportBackgroundColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            SizedBox(height: 20.h),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.defaultSRadius),
                    border: Border.all(color: AppColors.greyBorderColor)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.defaultSRadius),
                  child: Signature(
                    controller: _controller,
                    backgroundColor: AppColors.primaryLightColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: TextInputField(
                hintText: S.current.CREATE_SIGNATURE__USER_FULL_NAME,
                borderColor: Color(0xFFD8D8D8),
                focusColor: Color(0xFFD8D8D8),
                focusBorderColor: Color(0xFFD8D8D8),
              ),
            ),
            AppButton(
              text: S.current.CREATE_SIGNATURE__SAVE_SIGNATURE,
              borderRadius: BorderRadius.circular(AppDimensions.defaultMRadius),
            ),
          ]),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Assets.images.arrowBackIcon
          .svg(height: 22, width: 22, fit: BoxFit.scaleDown),
      centerTitle: true,
      title: Text(S.current.CREATE_SIGNATURE__USER_SIGNATURE,
          style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black)),
    );
  }
}
