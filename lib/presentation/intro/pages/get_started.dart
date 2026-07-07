import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/choose_mode/page/choose_mode.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: .bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBackground),
                fit: .cover,
              ),
            ),
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.logo),
                Container(color: Colors.black.withAlpha(75)),
                Spacer(),
                Text(
                  "Enjoy listening to music",
                  style: TextStyle(
                    fontWeight: .bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                  textAlign: .center,
                  style: TextStyle(
                    fontWeight: .w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 12),
                BasicAppButton(
                  label: "Get Started",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseModePage()),
                    );
                  },
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
