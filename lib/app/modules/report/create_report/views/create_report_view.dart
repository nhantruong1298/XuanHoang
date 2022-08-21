import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
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
                                images: images.value,
                                onItemTap: () async {
                                  final photoSource =
                                      await chooseImageBottomSheet();
                                  controller.onChooseImage(photoSource);
                                },
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

class _ChooseImages extends StatelessWidget {
  final List<File> images;
  final VoidCallback onItemTap;
  const _ChooseImages({
    Key? key,
    this.images = const [],
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = _buildItems();
    return Row(
      children: items,
    );
  }

  List<Widget> _buildItems() {
    List<Widget> result = [];
    if (images.length >= 3) {
      final items = images.skip(images.length - 3).toList();
      result = List.generate(
          items.length,
          (index) => Expanded(
                  child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onItemTap,
                  child: Container(
                    height: 145.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: AppColors.primaryLightColor)),
                    child: Image.file(items[index], fit: BoxFit.cover),
                  ),
                ),
              )));
    } else {
      result = List.generate(
          images.length,
          (index) => Expanded(
                  child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onItemTap,
                  child: Container(
                    height: 145.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: AppColors.primaryLightColor)),
                    child: Image.file(images[index], fit: BoxFit.cover),
                  ),
                ),
              )));
      do {
        result.add(Expanded(
            child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onItemTap,
            child: Container(
              height: 145.h,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.5, color: AppColors.primaryLightColor)),
              child:
                  Assets.images.cameraIcon.svg(height: 47, fit: BoxFit.contain),
            ),
          ),
        )));
      } while (result.length < 3);
    }

    return result;
  }
}
