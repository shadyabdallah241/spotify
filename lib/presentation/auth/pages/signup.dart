import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/appbar/app_bar.dart';
import 'package:spotify/common/helpers/is_dark_mood.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';
import 'package:spotify/presentation/auth/pages/signin.dart';
import 'package:spotify/presentation/root/pages/root.dart';
import 'package:spotify/service_locator.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool isobscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BasicAppbar(title: SvgPicture.asset(AppVectors.logo, width: 100)),
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
            TextFormField(
              controller: _fullName,
              cursorColor: AppColors.darkGrey,
              decoration: InputDecoration(
                hintText: ("Full Name"),
                contentPadding: EdgeInsets.all(30),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                hintText: "Enter Email",
                contentPadding: EdgeInsets.all(30),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _password,
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
            ),
            SizedBox(height: 30),
            BasicAppButton(
              onPressed: () async {
                var result = await sl<SignupUseCase>().call(
                  params: CreateUserReq(
                    fullName: _fullName.text,
                    email: _email.text,
                    password: _password.text,
                  ),
                );

                result.fold(
                  (l) {
                    var snackBar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  (r) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => RootPage()),
                      (route) => false,
                    );
                  },
                );
              },
              label: "Creat Account",
            ),
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
                  "Do You Have An Account?",
                  style: TextStyle(fontSize: 14, fontWeight: .bold),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  },
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
