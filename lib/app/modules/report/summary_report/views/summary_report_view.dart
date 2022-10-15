import 'package:example_nav2/app/modules/job/views/job_view.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/pdf_in_app_view.dart';
import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/app/modules/create_signature/views/create_signature_view.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/app/modules/report/summary_report/controllers/summary_report_controller.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../term/views/term_view.dart';

class SummaryReportView extends GetView<SummaryReportController> {
  static const String path = '/summary-report';
  static const String routeName =
      '${HomeView.path}${ChoosePhaseView.path}${TermView.path}${JobView.path}$path';

  const SummaryReportView({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfPath = controller.argument.pdfLocalPath;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.primaryLightColor,
          extendBodyBehindAppBar: true,
          bottomNavigationBar: _buildBottomNavigationBar(),
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
              child: PDFInAppView(
                path: pdfPath,
              ),
            ),
          ),
        ),
        Obx(() {
          return Visibility(
            visible: controller.isLoading.value,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: AppColors.primaryDarkColor.withOpacity(.5),
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.errorColor,
                ),
              ),
            ),
          );
        })
      ],
    );
  }

  Widget _buildConfirmButton() {
    return Flexible(
        child: AppButton(
      color: AppColors.green700,
      text: 'Đồng ý',
      onTap: () async {
        final result =
            await Get.to<SignatureData?>(() => CreateSignatureView());

        if (result == null) return;

        Get.back(result: result);
      },
    ));
  }

  Widget _buildDownloadButton() {
    return Flexible(
        child: AppButton(
      color: AppColors.green700,
      text: 'Download',
      onTap: () {
        controller.onDownloadReport();
      },
    ));
  }

  Widget _buildCancelButton() {
    return Flexible(
        child: AppButton(
      color: AppColors.errorColor,
      text: 'Không đồng ý',
      onTap: () {
        Get.back();
      },
    ));
  }

  Widget _buildSendReportButton() {
    return Flexible(
        child: AppButton(
      color: AppColors.errorColor,
      text: 'Gửi báo cáo',
      onTap: () {
        Get.back(result: true);
      },
    ));
  }

  Widget _buildBottomNavigationBar() {
    return (controller.argument.isCreating == true)
        ? Row(children: [
            _buildCancelButton(),
            _buildConfirmButton(),
          ])
        : Row(children: [
            _buildSendReportButton(),
            _buildDownloadButton(),
          ]);
  }
}
