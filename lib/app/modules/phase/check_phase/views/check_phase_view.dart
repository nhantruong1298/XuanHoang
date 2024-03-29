import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/phase/check_phase/controllers/check_phase_controller.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckPhaseView extends GetView<CheckPhaseController> {
  static const String routeName =
      '${HomeView.path}${ChoosePhaseView.path}$path';
  static const String path = '/check-progress';

  const CheckPhaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHECK_PROGRESS__TITLE,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 30, fit: BoxFit.scaleDown)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(child: BlurBackGround()),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.primaryLightColor,
                              borderRadius: BorderRadius.circular(
                                  AppDimensions.defaultLRadius)),
                          child: Obx(() {
                            final phaseStatistic = controller.phaseStatistic;

                            if (phaseStatistic.value.idPhase != null) {
                              return Column(
                                children: [
                                  const SizedBox(height: 50),
                                  _TitleStatisticReport(
                                    percentComplete:
                                        phaseStatistic.value.percentComplete,
                                  ),
                                  const SizedBox(height: 10),
                                  Expanded(
                                      child: ListView.separated(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16),
                                          itemCount: phaseStatistic.value
                                                  .termStatistic?.length ??
                                              0,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(height: 15),
                                          itemBuilder: (context, index) {
                                            final term = phaseStatistic
                                                .value.termStatistic![index];
                                            return _TermStatisticReport(
                                              percentComplete:
                                                  term.percentComplete,
                                              percentGood: term.percentGood,
                                              percentNotGood:
                                                  term.percentNotGood,
                                              termName: term.termName,
                                            );
                                          }))
                                ],
                              );
                            }

                            return const SizedBox.shrink();
                          }),
                        )),
                        const SizedBox(height: 20),
                        AppButton(
                          text: S.current.CHECK_PROGRESS__DETAIL,
                          onTap: controller.onDetailButtonPressed,
                          borderRadius: BorderRadius.circular(
                              AppDimensions.defaultMRadius),
                        )
                      ])),
            ),
          ],
        ));
  }
}

class _TermStatisticReport extends StatelessWidget {
  final String? termName;
  final String? percentComplete;
  final String? percentGood;
  final String? percentNotGood;
  const _TermStatisticReport(
      {Key? key,
      this.percentComplete,
      this.percentGood,
      this.percentNotGood,
      this.termName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(
              child: Text('$termName : ',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 20.sp,
                  )),
            ),
            Text(
              '$percentComplete',
              style: TextStyle(
                  color: AppColors.green700,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 30),
            Text('Đạt: ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text(
              '$percentGood',
              style: TextStyle(
                  color: AppColors.green700,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            Text(' - ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text('Không đạt: ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text(
              '$percentNotGood',
              style: TextStyle(
                  color: AppColors.errorColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        )
      ],
    );
  }
}

class _TitleStatisticReport extends StatelessWidget {
  final String? percentComplete;
  const _TitleStatisticReport({
    Key? key,
    this.percentComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hoàn thành: ',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          percentComplete ?? '',
          style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.green700),
        )
      ],
    );
  }
}
