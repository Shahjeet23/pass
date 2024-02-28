import 'package:flutter/material.dart';
import 'package:pass/constant/const.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Password genrator',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
