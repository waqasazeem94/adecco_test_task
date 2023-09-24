import 'package:adecco_task/app/resources/app_strings.dart';
import 'package:adecco_task/app/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(AppStrings.homePage),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Home Screen',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(350.w, 50.h)),
              onPressed: () => context.pop(),
              child: Text(AppStrings.back),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
