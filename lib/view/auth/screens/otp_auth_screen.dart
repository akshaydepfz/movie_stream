import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/auth/screens/success_screen.dart';
import 'package:movie_stream/view/auth/widgets/primary_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpAuthanticationScreen extends StatelessWidget {
  const OtpAuthanticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              AppSpacing.h20,
              const Center(
                child: Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              AppSpacing.h15,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: const Text(
                  'Please enter the verification code we send it to your email',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              AppSpacing.h20,
              PinCodeTextField(
                keyboardType: TextInputType.number,
                length: 5,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: AppColor.primary,
                  disabledColor: AppColor.secondary,
                  inactiveColor: Colors.grey,
                  selectedColor: AppColor.primary,
                  inactiveFillColor: AppColor.secondary,
                  selectedFillColor: AppColor.secondary,
                  activeFillColor: AppColor.primary,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {},
                cursorColor: AppColor.primary,
                onChanged: (value) {},
                appContext: context,
              ),
              const Spacer(),
              PrimaryButton(
                title: 'Verify your mobile number',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuccessScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
