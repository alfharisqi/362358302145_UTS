import 'package:flutter/material.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/screens/reset_password.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/screens/signup.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/screens/profile.dart'; // Import halaman profil
import 'package:uts_mobile_development_ogin_register_profilepage/theme.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/login_form.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/primary_button.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/logo.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              LogoPoliwangi(),
              SizedBox(height: 40),
              Text(
                'Selamat Datang Mahasiswa Poliwangi',
                style: titleText,
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Belum memiliki akun?',
                    style: subTitle,
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              LogInForm(),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(height: 20),
              PrimaryButton(
                buttonText: 'Log In',
                onTap: () {
                  // Navigasi ke halaman profil setelah login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
