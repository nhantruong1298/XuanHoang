import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/controllers/choose_progress_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseProgressView extends GetView<ChooseProgressController> {
  static const String routeName = '${HomeView.routeName}/choose-progress';
  static const String path = '/choose-progress';
  const ChooseProgressView({Key? key}) : super(key: key);

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
          ),
          body: Stack(
            children: [
              BlurBackGround(),
              SafeArea(
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.h),
                          SearchInputField(
                            borderRadius: 25,
                            contentPadding: 20,
                            onChanged: (value) {
                              controller.onSearchChanged(value);
                            },
                          ),
                          SizedBox(height: 20.h),
                          Obx(() {
                            final listProgress = controller.listProgress;
                            return Expanded(
                              child: RefreshIndicator(
                                onRefresh: controller.onRefresh,
                                child: ListView.separated(
                                  keyboardDismissBehavior:
                                      ScrollViewKeyboardDismissBehavior.onDrag,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    height: 10,
                                  ),
                                  itemCount: listProgress.length,
                                  itemBuilder: (context, index) {
                                    final item = listProgress[index];
                                    return _ProgressItem(
                                      onTap: () {
                                        controller.onProgressItemPressed(item);
                                      },
                                      fromDate: item.fromDate,
                                      toDate: item.toDate,
                                      title: item.name,
                                    );
                                  },
                                ),
                              ),
                            );
                          })
                        ])),
              ),
            ],
          )),
    );
  }
}

class _ProgressItem extends StatelessWidget {
  final String? title;
  final DateTime? fromDate;
  final DateTime? toDate;
  final VoidCallback? onTap;
  const _ProgressItem({
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
