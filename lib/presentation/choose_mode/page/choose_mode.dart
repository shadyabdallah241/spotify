import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
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
                image: AssetImage(AppImages.chooseBackground),
                fit: .cover,
              ),
            ),
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.logo),
                Container(color: Colors.black.withAlpha(75)),
                Spacer(),
                Text(
                  "Choose mode",
                  style: TextStyle(
                    fontWeight: .bold,
                    color: Colors.white.withAlpha(200),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  spacing: 24,
                  mainAxisAlignment: .center,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(50),
                            child: Stack(
                              alignment: .center,
                              children: [
                                Container(
                                  width: 75,
                                  height: 75,
                                  color: Colors.black12.withAlpha(10),
                                ),
                                Positioned.fill(
                                  child: BackdropFilter(
                                    filter: .blur(sigmaX: 10, sigmaY: 10),
                                    child: Container(color: Colors.transparent),
                                  ),
                                ),
                                SvgPicture.asset(AppVectors.darkIcon),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Dark mode",
                            style: TextStyle(
                              color: Colors.white.withAlpha(200),
                              fontWeight: .w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(50),
                            child: Stack(
                              alignment: .center,
                              children: [
                                Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.black12.withAlpha(10),
                                  ),
                                ),
                                Positioned.fill(
                                  child: BackdropFilter(
                                    filter: .blur(sigmaX: 10, sigmaY: 10),
                                    child: Container(color: Colors.transparent),
                                  ),
                                ),
                                SvgPicture.asset(AppVectors.lightIcon),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Light mode",
                            style: TextStyle(
                              color: Colors.white.withAlpha(200),
                              fontWeight: .w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                BasicAppButton(label: "Continue", onPressed: () {}),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
