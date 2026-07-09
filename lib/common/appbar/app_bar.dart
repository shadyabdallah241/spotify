import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mood.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class BasicAppbar extends StatelessWidget {
  const BasicAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.darkGrey
                : const Color.fromARGB(255, 227, 223, 223),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(Icons.arrow_back_ios_new, size: 15),
        ),
      ),
    );
  }
}
