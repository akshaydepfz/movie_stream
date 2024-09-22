import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/view/auth/widgets/primary_button.dart';
import 'package:movie_stream/view/home/screens/landing_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              LottieBuilder.asset(
                'assets/lottie/success.json',
                repeat: false,
              ),
              const Center(
                child: Text(
                  'Congratulations',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              AppSpacing.h10,
              const Text(
                'Your email has been verified. you can now enjoy movies',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              PrimaryButton(
                title: 'Continue',
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
