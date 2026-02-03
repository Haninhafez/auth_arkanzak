import 'package:auth_arkanzak/core/constant/color_app.dart';
import 'package:auth_arkanzak/core/constant/custom_text_poppins.dart';
import 'package:auth_arkanzak/core/constant/helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.outlineInputBorder,
    required this.text,

    this.isPassword = false,
    this.suffixIcon,
    this.hintText = '',
    required this.validator,
  });

  final OutlineInputBorder outlineInputBorder;
  final String text;
  bool isPassword;
  Widget? suffixIcon;
  final String? Function(String?)? validator;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,

      style: GoogleFonts.dmSans(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      validator: validator,
      decoration: InputDecoration(
        label: CustomTextPoppins(
          text: text,
          color: ColorApp.primay,
          fontSize: 25,
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorBorder: ErrorBorder(),
        focusedErrorBorder: ErrorBorder(),
      ),
    );
  }
}
