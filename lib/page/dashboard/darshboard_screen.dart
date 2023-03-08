import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizai/page/home/home_screen.dart';
import 'package:quizai/style/app_colors.dart';

class DasboardScreen extends StatelessWidget {
  const DasboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: const [HomePage()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.mainBlue,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.mainBlue,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 6,
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _bottomNavBarItem(Icons.home_rounded),
            _bottomNavBarItem(Icons.history),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
            _bottomNavBarItem(Icons.leaderboard_rounded),
            _bottomNavBarItem(CupertinoIcons.person_fill),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBarItem(IconData icon) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      child: Icon(
        icon,
        color: Colors.white,
        size: 26,
      ),
      onPressed: () {},
    );
  }
}
