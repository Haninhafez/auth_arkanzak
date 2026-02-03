import 'package:auth_arkanzak/auth/presentation/signup_presentation.dart';
import 'package:auth_arkanzak/auth/widgets/card_login.dart';
import 'package:auth_arkanzak/core/constant/helper.dart';
import 'package:flutter/material.dart';

class LoginPresentation extends StatelessWidget {
  const LoginPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 0,
              right: 0,

              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 100),
                color: Colors.black,
                child: Image.asset("assets/images/download (7).png"),
              ),
            ),

            Positioned.fill(
              top: 350,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: boxDecoration,

                child: CardLogin(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
