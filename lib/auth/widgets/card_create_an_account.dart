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

class CardCreateAnAccount extends StatefulWidget {
  CardCreateAnAccount({super.key, required this.outlineInputBorder});

  final OutlineInputBorder outlineInputBorder;

  @override
  State<CardCreateAnAccount> createState() => _CardCreateAnAccountState();
}

class _CardCreateAnAccountState extends State<CardCreateAnAccount> {
  UserModel userModel = UserModel();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: boxDecoration,

        child: SingleChildScrollView(
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 15),
              CustomTextField(
                outlineInputBorder: widget.outlineInputBorder,
                text: "First Name",
                validator: (String? value) {
                  userModel.firstName = value;
                  return Validators.name(userModel.firstName);
                },
              ),

              CustomTextField(
                outlineInputBorder: widget.outlineInputBorder,
                text: "Last Name",
                validator: (String? value) {
                  userModel.lastName = value;
                  return Validators.name(userModel.lastName);
                },
              ),
              CustomTextField(
                outlineInputBorder: outlineInputBorder,
                text: 'Phone',
                validator: (String? value) {
                  return Validators.phoneValidator(value);
                },
              ),
              CustomTextField(
                outlineInputBorder: widget.outlineInputBorder,
                text: "Email",
                validator: (String? value) {
                  userModel.email = value;
                  return Validators.email(userModel.email);
                },
              ),
              PasswordField(
                text: "Password",
                outlineInputBorder: widget.outlineInputBorder,
                validator: (String? value) {
                  userModel.password = value;
                  return Validators.password(userModel.password);
                },
              ),
              PasswordField(
                text: "Confirm Password",
                outlineInputBorder: outlineInputBorder,
                validator: (String? value) {
                  return Validators.confirmPasswordValidator(
                    password: userModel.password,
                    confirmPassword: value,
                  );
                },
              ),
              CustomTextPoppins(
                text: "By tapping Sign up you accept all ",
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextPoppins(text: "Terms", color: ColorApp.primay),
                  CustomTextPoppins(text: " and ", color: Colors.black),
                  CustomTextPoppins(text: "condtion", color: ColorApp.primay),
                ],
              ),
              ControllerButton(
                text: "CREATE AN ACCOUNT",
                color: ColorApp.primay,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    showSnackBar(
                      context: context,
                      message: "Success",
                      title: "Welcome",
                      contentType: ContentType.success,
                      color: ColorApp.success,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
