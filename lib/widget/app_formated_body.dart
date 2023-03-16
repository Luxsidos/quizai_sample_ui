import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizai/style/app_colors.dart';
import 'package:get/get.dart';
import 'package:quizai/widget/app_shadow.dart';

class AppFormatedBody extends StatelessWidget {
  final Widget child;
  const AppFormatedBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 80,
            color: AppColors.mainBlue,
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                width: context.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [AppShadow.glassEffect],
                ),
                child: child,
              ),
            ),
            const SafeArea(
              top: false,
              child: SizedBox.shrink(),
            ),
          ],
        )
      ],
    );
  }
}
// YORIM MANI BAXTIM ILTMOS SEVGILIM
// QANAQADR JOYGA 