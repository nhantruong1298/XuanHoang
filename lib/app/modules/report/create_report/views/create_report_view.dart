import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateReportView extends StatelessWidget {
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
          title: S.current.CREATE_REPORT__TITLE,
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
          onTap: () {},
          text: S.current.EDIT_REPORT__SEND,
        ),
        body: Stack(
          children: [
            const BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextInputField(
                            borderRadius: AppDimensions.defaultXLRadius,
                            hintText: 'Tiêu đề sự cố',
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextInputField(
                              borderRadius: AppDimensions.defaultXLRadius,
                              hintText: S.current
                                  .EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM,
                              maxLines: 10,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.h),
                        _ChooseImages(),
                      ])),
            ),
          ],
        ));
  }
}

class _ChooseImages extends StatelessWidget {
  const _ChooseImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Expanded(
                  child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: AppColors.primaryLightColor)),
                    padding: EdgeInsets.all(45),
                    child: Assets.images.cameraIcon
                        .svg(height: 47, fit: BoxFit.scaleDown),
                  ),
                ),
              ))),
    );
  }
}
