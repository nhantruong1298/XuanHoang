import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:example_nav2/app/data/models/constant/incident_status_item.dart';
import 'package:example_nav2/app/data/models/enum/incident_status.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/controllers/edit_report_controller.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
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

class EditReportView extends GetView<EditReportController> {
  static const String routeName =
      '${HomeView.path}${ReportListView.path}${ReportDetailView.path}$path';
  static const String path = '/edit-report';
  const EditReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.EDIT_REPORT__REPLY,
          actions: _buildHeaderActions,
        ),
        bottomNavigationBar: AppButton(
          onTap: () {
            controller.editReport();
          },
          text: S.current.EDIT_REPORT__SEND,
        ),
        body: Stack(
          children: [
            BlurBackGround(),
            SafeArea(
              child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Obx(
                    () {
                      final reportDetail = controller.reportDetail?.value;
                      final idIncidentStatus = controller.incidentStatus.value;
                      print(idIncidentStatus);
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            _ReportTitle(
                              title: reportDetail?.incidentName,
                            ),
                            SizedBox(height: 12.h),
                            _buildReplyTextField(),
                            SizedBox(height: 7.h),
                            _DropDownMenu(
                              value: (idIncidentStatus.isNotEmpty)
                                  ? idIncidentStatus
                                  : IncidentStatus.waiting,
                              onChanged: (idIncidentStatus) {
                                controller.onIdIncidentStatusChanged(
                                    idIncidentStatus);
                              },
                            ),
                            SizedBox(height: 7.h),
                            _ChooseImages(),
                          ]);
                    },
                  )),
            ),
          ],
        ));
  }

  Widget _buildReplyTextField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextInputField(
          controller: controller.replyContentController,
          borderRadius: AppDimensions.defaultXLRadius,
          hintText: S.current.EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM,
          maxLines: 10,
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

class _DropDownMenu extends StatelessWidget {
  final String? value;
  final Function(String?)? onChanged;
  const _DropDownMenu({Key? key, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final label = IncidentStatusItem.items
            .firstWhereOrNull((element) => element.key == value)
            ?.label ??
        '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          value: value,
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
  const _ReportTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 17,
          height: 17,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFF007D00)),
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
