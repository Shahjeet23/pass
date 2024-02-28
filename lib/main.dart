import 'package:flutter/material.dart';
import 'package:pass/constant/const.dart';
import 'package:pass/features/genratepassword/presentaion/pages/passwordgenrator.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasswordStateProvider())
      ],
      child: MaterialApp(
        title: 'password genrator',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgcolor,
        ),
        home: const PasswordGenratePage(),
      ),
    );
  }
}
