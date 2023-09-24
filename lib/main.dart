import 'package:adecco_task/app/injector/di.dart';
import 'package:adecco_task/app/navigation/router.dart';
import 'package:adecco_task/app/resources/app_strings.dart';
import 'package:adecco_task/app/theming/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  initInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => MaterialApp.router(
        routerConfig: router,
        title: AppStrings.appName,
        showPerformanceOverlay: kProfileMode,
        theme: AppTheme.buildTheme(),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
