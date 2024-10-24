import 'package:flutter/material.dart';

class LogoPoliwangi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://th.bing.com/th/id/OIP.rJR2lMc836RiKoxi4OnZBwHaGl?rs=1&pid=ImgDetMain', // Ganti dengan path logo universitas Anda
        height: 200, // Atur tinggi sesuai kebutuhan
      ),
    );
  }
}
