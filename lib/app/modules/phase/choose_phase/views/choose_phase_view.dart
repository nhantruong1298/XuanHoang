import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/controllers/choose_phase_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:example_nav2/widgets/layouts/blur_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChoosePhaseView extends GetView<ChoosePhaseController> {
  static const String routeName = '${HomeView.routeName}/choose-phase';
  static const String path = '/choose-phase';
  const ChoosePhaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurLayout(
        extendBodyBehindAppBar: true,
        title: S.current.CHOOSE_PROGRESS__CHOOSE_PROGRESS_TEXT,
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
        child: Column(
          children: [
            SizedBox(height: 30.h),
            SearchInputField(onChanged: controller.onSearchChanged),
            SizedBox(height: 20.h),
            Expanded(
              child: RefreshIndicator(
                onRefresh: controller.onRefresh,
                child: Obx(() {
                  final listProgress = controller.listProgress;
                  return ListView.separated(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemCount: listProgress.length,
                    itemBuilder: (context, index) {
                      final item = listProgress[index];
                      return _PhaseItem(
                        onTap: () {
                          controller.onProgressItemPressed(item);
                        },
                        fromDate: item.fromDate,
                        toDate: item.toDate,
                        title: item.name,
                      );
                    },
                  );
                }),
              ),
            )
          ],
        ));
  }
}

class _PhaseItem extends StatelessWidget {
  final String? title;
  final DateTime? fromDate;
  final DateTime? toDate;
  final VoidCallback? onTap;
  const _PhaseItem({
    Key? key,
    this.title,
    this.fromDate,
    this.toDate,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppConstants.defaultBoxShadow],
        borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppDimensions.defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      child: Text(title ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                              AppFormatter.formatDate(fromDate) +
                                  ' - ' +
                                  AppFormatter.formatDate(toDate),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp)),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
