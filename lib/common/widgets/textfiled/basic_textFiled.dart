import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class BasicTextFiled extends StatefulWidget {
  const BasicTextFiled({
    super.key,
    required this.hint,
    this.isPassowrd = false,
  });
  final String hint;
  final bool isPassowrd;

  @override
  State<BasicTextFiled> createState() => _BasicTextFiledState();
}

class _BasicTextFiledState extends State<BasicTextFiled> {
  bool isobscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.darkGrey,
      obscureText: widget.isPassowrd ? isobscure : false,
      keyboardType: .visiblePassword,
      decoration: InputDecoration(
        suffixIcon: widget.isPassowrd
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isobscure = !isobscure;
                  });
                },
                icon: !isobscure
                    ? Icon(Icons.visibility_outlined)
                    : Icon(Icons.visibility_off_outlined),
              )
            : null,
        contentPadding: EdgeInsets.all(30),
        hint: Text(
          widget.hint,
          style: TextStyle(
            color: Color(0xffA7A7A7),
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffA7A7A7)),
          borderRadius: BorderRadius.circular(30),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffA7A7A7)),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
