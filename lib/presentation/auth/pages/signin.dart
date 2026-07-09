import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/appbar/app_bar.dart';
import 'package:spotify/common/helpers/is_dark_mood.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BasicAppbar(title: SvgPicture.asset(AppVectors.logo, width: 100)),
            SizedBox(height: 47),
            Text("Sign In", style: TextStyle(fontSize: 30, fontWeight: .bold)),
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
            FullNameField(),
            SizedBox(height: 15),

            SizedBox(height: 15),
            PasswordFiled(),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Recovery Passowrd",
                    style: TextStyle(color: AppColors.darkBackground),
                  ),
                ),
              ],
            ),
            BasicAppButton(onPressed: () {}, label: "Sign In"),
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
                SvgPicture.asset(
                  context.isDarkMode
                      ? AppVectors.appleLogo
                      : AppVectors.appleLogoLight,
                ),
              ],
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Not a member ?",
                  style: TextStyle(fontSize: 14, fontWeight: .bold),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {},
                  child: Text(
                    "Register Now",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FullNameField extends StatelessWidget {
  const FullNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        hintText: ("Enter Username Or Email"),
        contentPadding: EdgeInsets.all(30),
      ),
    );
  }
}

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({super.key});

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  bool isobscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(30),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isobscure = !isobscure;
            });
          },
          icon: !isobscure
              ? Icon(Icons.visibility_outlined)
              : Icon(Icons.visibility_off_outlined),
        ),

        hintText: "Password",
      ),
    );
  }
}
