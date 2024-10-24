import 'package:flutter/material.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/screens/login.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/theme.dart';
import 'package:uts_mobile_development_ogin_register_profilepage/widgets/primary_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Profil Mahasiswa',
                style: titleText,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 100, // Ukuran avatar
                backgroundImage: NetworkImage('https://drive.google.com/file/d/1yIjH7WgTUqmArMZPG1gIj7Zrl2KUpF9j/view?usp=drive_link'), // Ganti link di sini
                backgroundColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Nama: Alfha Risqi Wicaksono',
                style: subTitle,
              ),
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'NIM: 362358302145',
                style: subTitle,
              ),
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Jurusan: Bisnis dan Informatika',
                style: subTitle,
              ),
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Kelas: 2A',
                style: subTitle,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(
                buttonText: 'Keluar',
                onTap: () {
                  // Navigasi kembali ke halaman login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
