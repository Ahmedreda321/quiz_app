import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: sideTextColor,
          ),
          onPressed: onPressed),
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: sideTextColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: '',
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
