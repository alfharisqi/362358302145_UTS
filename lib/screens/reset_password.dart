import 'package:flutter/material.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/screens/login.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/theme.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/primary_button.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Silahkan masukkan NIM anda',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ));
                },
                child: PrimaryButton(buttonText: 'Reset Password')),
          ],
        ),
      ),
    );
  }
}