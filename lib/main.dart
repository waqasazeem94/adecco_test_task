import 'package:adecco_task/app/injector/di.dart';
import 'package:adecco_task/app/navigation/router.dart';
import 'package:adecco_task/app/resources/app_strings.dart';
import 'package:adecco_task/app/theming/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:convert';

import 'package:http/http.dart';

void main() {
  initInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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


// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up Api'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: emailController,
//               decoration: InputDecoration(
//                   hintText: 'Email'
//               ),
//             ),
//             SizedBox(height: 20,),
//             TextFormField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                   hintText: 'Password'
//               ),
//             ),
//             SizedBox(height: 40,),
//             GestureDetector(
//               onTap: (){
//                 login(emailController.text.toString(), passwordController.text.toString());
//               },
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Center(child: Text('Login'),),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
