import 'package:adecco_task/app/resources/app_strings.dart';
import 'package:adecco_task/app/utils/regexes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginFormValidation extends StatefulWidget {
  const LoginFormValidation({super.key});

  @override
  LoginFormValidationState createState() => LoginFormValidationState();
}

class LoginFormValidationState extends State<LoginFormValidation> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final focusNode = FocusNode();

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "* Required";
    } else if (value.length < 10) {
      return "Password should be at least 10 characters";
    } else if (value == "cityslicka") {
      return null;
    } else {
      return "Please enter correct password";
    }
  }

  String? validateEmail(String? input) {
    if (input!.isEmpty) {
      return "* Required";
    } else if (Regexes.email.hasMatch(input)) {
      return null;
    } else {
      return AppStrings.pleaseEnterValidEmail;
    }
  }

  void unFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
    focusNode.unfocus();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: SizedBox(
                      width: 200, height: 150, child: Image.asset('asset/images/flutter-logo.png')),
                ),
                SizedBox(height: 40.h),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                  validator: validateEmail,
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validatePassword,
                ),
                SizedBox(height: 70.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(1.sw, 50.h),
                  ),
                  onPressed: () {
                    unFocus();
                    // context.go("/home");
                    if (formKey.currentState!.validate()) {
                      context.go("/home");
                      print("Validated");
                    } else {
                      print("Not Validated");
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
