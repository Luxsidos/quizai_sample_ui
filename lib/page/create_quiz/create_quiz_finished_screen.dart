import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizai/page/home/home_screen.dart';
import 'package:quizai/style/app_colors.dart';
import 'package:quizai/widget/app_icon_button.dart';
import 'package:quizai/widget/app_scaffold.dart';

class CreateQuizFinishedPage extends StatelessWidget {
  const CreateQuizFinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "",
      withBackButton: false,
      backgroundColor: AppColors.mainBlue,
      leading: const SizedBox.shrink(),
      trailingAppBar: AppIconButton(
        padding: const EdgeInsets.only(right: 32),
        icon: CupertinoIcons.xmark,
        onPressed: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            color: AppColors.bgColorWhite,
          ),
          const SafeArea(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
