import 'package:auth_arkanzak/auth/widgets/card_create_an_account.dart';
import 'package:auth_arkanzak/core/constant/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPresentation extends StatelessWidget {
  const SignupPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 100),
                alignment: Alignment.center,
                color: Colors.black,
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 200,
              left: 0,
              right: 0,
              bottom: 0,

              child: CardCreateAnAccount(
                outlineInputBorder: outlineInputBorder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
