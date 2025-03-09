import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah_login/config/app_color.dart';
import 'package:spedah_login/widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/bg.png',
                      width: 190,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Hero(
                      tag: 'bikeAnimation',
                      child: Image.asset(
                        'assets/cykl.png',
                        width: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: GoogleFonts.sora(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Sign up to get started!",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    label: "Name",
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    label: "Email Address",
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    label: "Password",
                    isPassword: true,
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    label: "Confirm Password",
                    isPassword: true,
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonYellow,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text("Sign Up",
                        style: GoogleFonts.sora(
                            color: Colors.black, fontSize: 18)),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Text(
                "Already have an account? Log in",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
