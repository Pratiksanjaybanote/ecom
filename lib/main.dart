import 'package:flutter/material.dart';

import 'sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences sp = await SharedPreferences.getInstance();
  // bool isLogin = sp.getBool('is_login') ?? false;

  await Future.delayed(const Duration(seconds: 3));
  runApp(
    MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      // navigatorKey: navigatorKey,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      // home: isLogin
      //     ? const Home()
      //     : isID
      //     ? const SelectCourse()
      //     : const Register(),
      home: sign_in(),

      // home: isLogin ? Home() : SignIn(),
    ),
  );
}
