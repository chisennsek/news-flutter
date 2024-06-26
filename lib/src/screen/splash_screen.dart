import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/src/screen/bottom_navigationbar.dart';
import 'package:news/src/screen/login_screen.dart';

import '../common/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.colorPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://img.pikbest.com/origin/09/21/93/4pIkbEsTEpIkbEsT49t.png!sw800',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.width / 1.5,
          ),
          const CircularProgressIndicator.adaptive(
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
