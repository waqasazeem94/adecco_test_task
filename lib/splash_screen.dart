import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      navigate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            SizedBox(width: 200, height: 150, child: Image.asset('asset/images/flutter-logo.png')),
      ),
    );
  }

  void navigate(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      context.go("/login");
    });
  }
}
