import 'dart:io';

import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/photo_view/photo_view.dart';
import 'package:example_nav2/app/modules/report/create_report/controllers/create_report_controller.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/bottom_sheet/choose_image_bottom_sheet.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class CreateReportView extends GetView<CreateReportController> {
  static const String path = '/create-report';
  static const String routeName = '${HomeView.path}${ReportListView.path}$path';
  const CreateReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: 'Thêm báo cáo',
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 25, fit: BoxFit.scaleDown)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        bottomNavigationBar: AppButton(
          onTap: () {
            controller.onCreateReportPressed();
          },
          text: 'Gửi báo cáo',
        ),
        body: Stack(
          children: [
            const BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: FormBuilder(
                    key: controller.formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextInputField(
                              initValue: '',
                              borderRadius: AppDimensions.defaultXLRadius,
                              hintText: 'Tiêu đề sự cố',
                              name: controller.TITLE_KEY,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: 'Tiêu đề không được để trống'),
                              ]),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextInputField(
                                initValue: '',
                                borderRadius: AppDimensions.defaultXLRadius,
                                hintText: S.current
                                    .EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM,
                                maxLines: 10,
                                name: controller.CONTENT_KEY,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                      errorText:
                                          'Nội dung không được để trống'),
                                ]),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h),
                          Obx(
                            () {
                              final images = controller.images;
                              return _ChooseImages(
                                imagesData: images.value,
                              );
                            },
                          )
                        ]),
                  )),
            ),
            Obx(() {
              return Visibility(
                visible: controller.isLoading.value,
                child: Positioned.fill(
                    child: Container(
                  color: AppColors.primaryDarkColor.withOpacity(.6),
                  child: Center(
                      child: CircularProgressIndicator(
                    color: AppColors.errorColor,
                  )),
                )),
              );
            })
          ],
        ));
  }
}

class _ChooseImages extends GetView<CreateReportController> {
  final List<File> imagesData;
  const _ChooseImages({Key? key, this.imagesData = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = _buildItems();
    return Row(
      children: items,
    );
  }

  List<Widget> _buildItems() {
    final result = List.generate(
        imagesData.length,
        (index) => Expanded(
                child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ImageView(
                      file: imagesData[index],
                    ));
                  },
                  child: Container(
                      height: 145.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5, color: AppColors.primaryLightColor)),
                      child: Image.file(
                        imagesData[index],
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      controller.onRemoveImage(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Assets.images.removeIcon
                          .svg(width: 25, height: 25, fit: BoxFit.scaleDown),
                    ),
                  ),
                  right: 0,
                  top: 0,
                ),
              ],
            )));

    while (result.length < 3) {
      result.add(_buildPickImageButton());
    }

    return result;
  }

  Expanded _buildPickImageButton() {
    return Expanded(
        child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          final photoSource = await chooseImageBottomSheet();
          controller.onChooseImage(photoSource);
        },
        child: Container(
          height: 145.h,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1.5, color: AppColors.primaryLightColor)),
          child: Assets.images.cameraIcon.svg(
            height: 45.h,
            width: 45.h,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    ));
  }
}
