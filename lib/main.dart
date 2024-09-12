import 'package:flutter/material.dart';
import 'package:telegram_clone/base/bottomnavbar.dart';
import 'package:telegram_clone/screens/authorization_screen.dart';
import 'package:get/get.dart';




void main() {
  runApp(GetMaterialApp( debugShowCheckedModeBanner: false,
    home: const AuthorizationScreen(),



    getPages: [
      GetPage(name: '/authorization', page: () => const AuthorizationScreen()),
      GetPage(name: '/next', page: () => const Bottomnavbar()), // Bottomnavbar is the page to navigate to
    ],
  ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthorizationScreen(),
      debugShowCheckedModeBanner: false,
    );






  }
}
