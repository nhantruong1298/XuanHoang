import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:example_nav2/app/data/models/constant/incident_status_item.dart';
import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/photo_view/photo_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/controllers/edit_report_controller.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/bottom_sheet/choose_image_bottom_sheet.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditReportView extends GetView<EditReportController> {
  static const String routeName =
      '${HomeView.path}${ReportListView.path}${ReportDetailView.path}$path';
  static const String path = '/edit-report';
  const EditReportView({Key? key}) : super(key: key);

  bool get isCustomer => AuthService.to.accountType == AccountType.customer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: ChooseProjectAppBar(
            leadingIcon: Assets.images.arrowBackIcon.path,
            title: S.current.EDIT_REPORT__REPLY,
            actions: _buildHeaderActions,
          ),
          bottomNavigationBar: const SizedBox.shrink(),
          body: Stack(
            children: [
              BlurBackGround(),
              SafeArea(
                child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Obx(
                      () {
                        final reportDetail = controller.reportDetail;
                        final imagesData = controller.imagesData;
                        final status = controller.idIncidentStatus.value;
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              _ReportTitle(
                                  title: reportDetail?.incidentName,
                                  status: controller
                                      .reportDetail?.idIncidentStatus),
                              SizedBox(height: 12.h),
                              _buildReplyTextField(controller.replyContent),
                              SizedBox(height: 7.h),
                              (isCustomer)
                                  ? const SizedBox.shrink()
                                  : _DropDownMenu(
                                      value: status.isEmpty ? null : status,
                                      onChanged: (idIncidentStatus) {
                                        controller.onIdIncidentStatusChanged(
                                            idIncidentStatus);
                                      },
                                    ),
                              SizedBox(height: 7.h),
                              _ChooseImages(
                                imagesData: imagesData.toList(),
                              ),
                              AppButton(
                                onTap: () {
                                  if (!controller.isLoading.value) {
                                    controller.editReport();
                                  }
                                },
                                text: S.current.EDIT_REPORT__SEND,
                              )
                            ]);
                      },
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
          )),
    );
  }

  Widget _buildReplyTextField(String initText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextInputField(
          borderRadius: AppDimensions.defaultXLRadius,
          hintText: S.current.EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM,
          initValue: initText,
          minLines: 30,
          maxLines: 30,
          onChanged: (value) {
            controller.onReplyContentChanged(value ?? '');
          },
        ),
      ),
    );
  }

  List<Widget> get _buildHeaderActions {
    return [
      IconButton(
          onPressed: () {
            Get.offNamedUntil(HomeView.routeName, (route) => false);
          },
          icon: Assets.images.homeIcon.svg(height: 25, fit: BoxFit.scaleDown)),
      SizedBox(
        width: 10,
      )
    ];
  }
}

class _ChooseImages extends GetView<EditReportController> {
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

class _DropDownMenu extends StatelessWidget {
  final String? value;
  final Function(String?)? onChanged;
  const _DropDownMenu({Key? key, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final label = IncidentStatusItem.items
            .firstWhereOrNull((element) => element.key == value)
            ?.label ??
        'Chọn trạng thái';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          // value: null,
          items: List.generate(
            IncidentStatusItem.items.length,
            (index) {
              final item = IncidentStatusItem.items[index];
              return DropdownMenuItem<String>(
                  child: Text(item.label), value: item.key);
            },
          ).toList(),
          onChanged: onChanged,
          dropdownDecoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(AppDimensions.defaultRadius)),
          customButton: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.defaultRadius),
                  color: AppColors.primaryLightColor),
              child: Row(
                children: [
                  Text(label,
                      style: TextStyle(
                          fontSize: 16.sp, color: AppColors.textColor)),
                  const Spacer(),
                  Assets.images.dropdownIcon
                      .svg(height: 25, fit: BoxFit.scaleDown)
                ],
              )),
        ),
      ),
    );
  }
}

class _ReportTitle extends StatelessWidget {
  final String? title;
  final String? status;
  const _ReportTitle({
    Key? key,
    this.title,
    this.status,
  }) : super(key: key);
  Color get statusColor {
    return IncidentStatusItem.items
            .firstWhereOrNull((item) => item.key == status)
            ?.color ??
        AppColors.primaryDarkColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(shape: BoxShape.circle, color: statusColor),
          margin: EdgeInsets.only(right: 15, top: 5),
        ),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title ?? '',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700))
        ]))
      ]),
    );
  }
}
