import 'package:flutter/material.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap; // Menambahkan parameter onTap

  const PrimaryButton({required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Menambahkan GestureDetector
      onTap: onTap, // Menghubungkan dengan fungsi onTap
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: Text(
          buttonText,
          style: textButton.copyWith(color: kWhiteColor),
        ),
      ),
    );
  }
}
