import 'package:clothes_shop/utils/image_path.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(ImagePath.logo),
            CircularProgressIndicator(),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
