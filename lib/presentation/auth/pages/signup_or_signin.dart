import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/appbar/app_bar.dart';
import 'package:spotify/common/helpers/is_dark_mood.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BasicAppbar(),
            Align(
              alignment: .topRight,
              child: SvgPicture.asset(AppVectors.topPattern),
            ),
            Align(
              alignment: .bottomRight,
              child: SvgPicture.asset(AppVectors.bottomPattern),
            ),
            Align(alignment: .bottomLeft, child: Image.asset(AppImages.authBg)),
            Align(
              alignment: .center,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    SizedBox(height: 50),
                    Text(
                      "Enjoy listening to music",
                      style: TextStyle(fontSize: 26, fontWeight: .bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Spotify is a proprietary Swedish audio\n streaming and media services provider ",
                      style: TextStyle(fontSize: 17, color: Color(0xffA0A0A0)),
                      textAlign: .center,
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: BasicAppButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                            label: "Register",
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: context.isDarkMode
                                    ? Color(0xffD7D7D7)
                                    : Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
