import 'dart:io';

import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

class CreateSignatureView extends StatefulWidget {
  const CreateSignatureView({Key? key}) : super(key: key);

  @override
  State<CreateSignatureView> createState() => _CreateSignatureViewState();
}

class _CreateSignatureViewState extends State<CreateSignatureView> {
  bool isLoading = false;
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: AppColors.primaryDarkColor,
    exportBackgroundColor: AppColors.primaryLightColor,
  );

  TextEditingController _textController = TextEditingController(text: '');

  @override
  void dispose() {
    _textController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: double.infinity,
              child: Column(children: [
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
                    controller: _textController,
                    hintText: S.current.CREATE_SIGNATURE__USER_FULL_NAME,
                    borderColor: Color(0xFFD8D8D8),
                    focusColor: Color(0xFFD8D8D8),
                    focusBorderColor: Color(0xFFD8D8D8),
                  ),
                ),
                AppButton(
                  isLoading: isLoading,
                  onTap: onNextButtonPressed,
                  text: 'Tiếp tục',
                  borderRadius:
                      BorderRadius.circular(AppDimensions.defaultMRadius),
                ),
              ]),
            ),
          ),
          Visibility(
              visible: isLoading,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.transparent,
              ))
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Assets.images.arrowBackIcon
            .svg(height: 22, width: 22, fit: BoxFit.scaleDown),
      ),
      centerTitle: true,
      title: Text(S.current.CREATE_SIGNATURE__USER_SIGNATURE,
          style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black)),
    );
  }

  void toggleLoading(bool isLoading) {
    setState(() {
      isLoading = isLoading;
    });
  }

  Future<void> onNextButtonPressed() async {
    toggleLoading(true);
    if (_textController.text.isEmpty) {
      showSnackbar(
          message: 'Tên khách hàng không được để trống',
          backgroundColor: AppColors.errorColor);
      toggleLoading(false);
      return;
    }

    final unit8List = await _controller.toPngBytes();

    if (unit8List == null) {
      showSnackbar(
          message: 'Chữ ký không được để trống',
          backgroundColor: AppColors.errorColor);
      toggleLoading(false);
      return;
    }

    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/signature.png').create();
    file.writeAsBytesSync(unit8List);
    final customerName = _textController.text;

    Get.back(result: SignatureData(customerName: customerName, image: file));
  }
}
