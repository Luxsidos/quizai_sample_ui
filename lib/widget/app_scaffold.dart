import 'package:flutter/material.dart';
import 'package:quizai/style/app_colors.dart';
import 'package:quizai/widget/app_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.body,
    this.appBarTitle,
    this.withBackButton = true,
    this.bottomNavigation,
    this.trailingAppBar,
    this.height = false,
    this.bottomSize = kToolbarHeight,
    this.subTitle = '',
    this.subTitleDesc = '',
    this.extendBodyBehindAppBar = false,
    this.bottomSheet,
    this.backgroundColor = AppColors.bgColorWhite,
    this.scrollPhysics,
    this.appBarBackground = AppColors.mainBlue,
    this.appBarHeight,
    this.leading,
    this.flexibleSpace,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }) : super(key: key);
  final Widget body;
  final String? appBarTitle;
  final bool withBackButton;
  final Widget? bottomNavigation;
  final Widget? trailingAppBar;
  final Widget? bottomSheet;
  final Widget? leading;
  final Widget? flexibleSpace;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool height;
  final bool extendBodyBehindAppBar;
  final double bottomSize;
  final String subTitle;
  final Color backgroundColor;
  final Color appBarBackground;
  final String subTitleDesc;
  final double? appBarHeight;
  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: appBarTitle == null ? null : buildAppAppBar(),
      backgroundColor: backgroundColor,
      body: body,
      bottomNavigationBar: bottomNavigation,
      bottomSheet: bottomSheet,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }

  AppAppBar buildAppAppBar() {
    return AppAppBar(
      title: appBarTitle ?? '',
      showBack: withBackButton,
      bottom: height,
      appBarHeight: appBarHeight,
      bottomsize: bottomSize,
      bottomtitle: subTitle,
      subtitle: subTitleDesc,
      leading: leading,
      backgroundColor: appBarBackground,
      flexibleSpace: flexibleSpace,
      actions: trailingAppBar == null
          ? []
          : [
              trailingAppBar!,
            ],
    );
  }
}
