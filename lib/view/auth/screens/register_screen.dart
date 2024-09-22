import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_icons.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/auth/providers/auth_provider.dart';
import 'package:movie_stream/view/auth/screens/otp_auth_screen.dart';
import 'package:movie_stream/view/auth/widgets/divider_widget.dart';
import 'package:movie_stream/view/auth/widgets/primary_button.dart';
import 'package:movie_stream/view/auth/widgets/primary_text_field.dart';
import 'package:movie_stream/view/auth/widgets/privacy_policy_widget.dart';
import 'package:movie_stream/view/auth/widgets/social_media_widget.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              AppSpacing.h20,
              AppSpacing.h20,
              const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              AppSpacing.h15,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: const Text(
                  'Enter your user informations below or continue with one of your social accounts',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              AppSpacing.h20,
              const PrimaryTextField(
                hintText: 'Name',
              ),
              AppSpacing.h15,
              const PrimaryTextField(
                hintText: 'Email',
              ),
              AppSpacing.h15,
              Consumer<AuthProvider>(builder: (context, p, _) {
                return TextField(
                  obscureText: p.isVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          p.onVisibleChange();
                        },
                        icon: p.isVisible
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.primary)),
                    border: const OutlineInputBorder(),
                  ),
                );
              }),
              AppSpacing.h20,
              PrimaryButton(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const OtpAuthanticationScreen()));
                },
                title: 'Sign Up',
              ),
              const PrivacyPolicyWidget(),
              AppSpacing.h20,
              const DivdingWidget(),
              AppSpacing.h20,
              AppSpacing.h20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMediaWidget(
                    icon: AppIcon.facebook,
                  ),
                  SocialMediaWidget(
                    icon: AppIcon.google,
                  ),
                  SocialMediaWidget(
                    icon: AppIcon.apple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
