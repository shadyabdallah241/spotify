import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/textfiled/basic_textFiled.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BasicAppbar(),
            SizedBox(height: 47),
            Text("Register", style: TextStyle(fontSize: 30, fontWeight: .bold)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text("If You Need Any Support"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 12, color: AppColors.primary),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            BasicTextFiled(hint: "Full Name"),
            SizedBox(height: 15),
            BasicTextFiled(hint: "Enter Email"),
            SizedBox(height: 15),
            BasicTextFiled(hint: "Password", isPassowrd: true),
            SizedBox(height: 30),
            BasicAppButton(onPressed: () {}, label: "Creat Account"),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    width: .infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.darkGrey, AppColors.darkBackground],
                      ),
                    ),
                  ),
                ),
                Text(" Or  ", style: TextStyle(color: AppColors.grey)),
                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    height: 2,
                    width: .infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.darkGrey, AppColors.darkBackground],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              spacing: 60,
              mainAxisAlignment: .center,
              children: [
                SvgPicture.asset(AppVectors.googleLogo),
                SvgPicture.asset(AppVectors.appleLogo),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Do You Have An Account?",
                  style: TextStyle(fontSize: 14, fontWeight: .bold),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {},
                  child: Text("Sign In", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
