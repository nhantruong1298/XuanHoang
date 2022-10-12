import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/app/modules/create_signature/views/create_signature_view.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/summary_report/controllers/summary_report_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../../../choose_category/views/choose_category_view.dart';

class SummaryReportView extends GetView<SummaryReportController> {
  static const String path = '/summary-report';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}${ChooseTermView.path}${ChooseJobView.path}$path';

  const SummaryReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightColor,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: InAppWebView(
                initialUrlRequest:
                    URLRequest(url: Uri.parse(controller.argument.url)),
                initialOptions: controller.webViewOptions,
                onLoadStop: (controller, url) {},
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset(Assets.images.arrowBackIcon.path,
            color: AppColors.primaryDarkColor,
            height: 27,
            fit: BoxFit.scaleDown),
      ),
      centerTitle: true,
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
        //
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
