import 'package:auth_arkanzak/auth/model/user_model.dart';
import 'package:auth_arkanzak/auth/widgets/custom_text_field.dart';
import 'package:auth_arkanzak/auth/widgets/header_authentication.dart';
import 'package:auth_arkanzak/auth/widgets/password_field.dart';
import 'package:auth_arkanzak/core/constant/color_app.dart';
import 'package:auth_arkanzak/core/constant/controller_button.dart';
import 'package:auth_arkanzak/core/constant/custom_text_poppins.dart';
import 'package:auth_arkanzak/core/constant/helper.dart';
import 'package:auth_arkanzak/core/utils/form_validators.dart';
import 'package:auth_arkanzak/core/utils/snack_bar.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLogin extends StatefulWidget {
  CardLogin({super.key});

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  UserModel userModel = UserModel();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Text(
              "Login",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            CustomTextField(
              outlineInputBorder: outlineInputBorder,
              text: "Email or Phone Number",
              validator: (String? value) {
                return Validators.emailOrPhoneValidator(value);
              },
            ),

            PasswordField(
              text: "Password",
              outlineInputBorder: outlineInputBorder,
              validator: (String? value) {
                userModel.password = value;
                return Validators.password(value);
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CustomTextPoppins(
                text: "Forget Password?",
                color: ColorApp.orange,
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: ControllerButton(
                text: "SIGN IN",
                color: ColorApp.primay,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      showSnackBar(
                        title: "Success",
                        context: context,
                        message: "Login Success",
                        contentType: ContentType.success,
                        color: Colors.green.shade400,
                      );
                    } catch (e) {
                      showSnackBar(
                        title: "Error",
                        context: context,
                        message: e.toString(),
                        contentType: ContentType.failure,
                        color: Colors.red.shade400,
                      );
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
