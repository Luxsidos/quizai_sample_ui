import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizai/page/create_quiz/create_quiz_steps_screen.dart';
import 'package:quizai/style/app_colors.dart';
import 'package:quizai/widget/app_formated_body.dart';
import 'package:quizai/widget/app_icon_button.dart';
import 'package:quizai/widget/app_scaffold.dart';
import 'package:quizai/widget/app_text_field.dart';
import 'package:quizai/widget/app_text_style.dart';
import 'package:quizai/widget/buttons.dart';

class CreateQuizPage extends StatelessWidget {
  const CreateQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      withBackButton: true,
      appBarTitle: "Create Quiz",
      body: AppFormatedBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Quiz ID:",
                  style: AppTextStyle.darkTitle,
                ),
                const Text(
                  "458 522 5569",
                  style: AppTextStyle.subTitleGrey,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                  decoration: BoxDecoration(
                      color: AppColors.cyan.withOpacity(.3),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    CupertinoIcons.pencil,
                    color: AppColors.cyan,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Quiz Password:",
                  style: AppTextStyle.darkTitle,
                ),
                Text(
                  "2C4mm1",
                  style: AppTextStyle.subTitleGrey,
                ),
                SizedBox.shrink(),
                SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 6),
            const Divider(),
            const SizedBox(height: 12),
            const AppTextFieldWidget(
              labelText: "Quiz Name",
            ),
            const SizedBox(height: 12),
            const AppTextFieldWidget(
              labelText: "Question Type",
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                size: 28,
              ),
            ),
            const SizedBox(height: 12),
            const AppTextFieldWidget(
              labelText: "Number of Question",
            ),
            const SizedBox(height: 12),
            const AppTextFieldWidget(
              labelText: "Quiz Duration",
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                size: 28,
              ),
            ),
            const Spacer(),
            AppPrimaryButton(
              label: "Continue",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateQuizStepsPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
