import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/auth/screens/register_screen.dart';
import 'package:movie_stream/view/auth/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 4, color: AppColor.secondary),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/screenshot.png'),
                      fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height / 1.4,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .15),
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * .30,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Never Miss',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'New Movies & Series',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            AppSpacing.h10,
            const Text(
              'Be the first one to watch latest movies and series on MovieStre',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
            AppSpacing.h20,
            PrimaryButton(
              title: 'Get Started',
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}

