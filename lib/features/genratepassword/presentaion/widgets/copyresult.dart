import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pass/constant/const.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

class Copyresult extends StatefulWidget {
  const Copyresult({super.key});

  @override
  State<Copyresult> createState() => _CopyresultState();
}

class _CopyresultState extends State<Copyresult> {
  bool isCopy = false;
  Color bordercolor = bgcolor;
  bool copyvis = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordStateProvider>(
      builder: (context, values, child) => Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            margin: const EdgeInsets.symmetric(horizontal: defaultpadding),
            padding: const EdgeInsets.symmetric(horizontal: defaultpadding),
            decoration: BoxDecoration(
                border: Border.all(color: primarycolor),
                borderRadius: BorderRadius.circular(defaultpadding),
                color: bordercolor),
            child: TextField(
              readOnly: true,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: primarycolor,
                  ),
              decoration: InputDecoration(
                hintText: values.password,
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.copy,
                  size: Theme.of(context).textTheme.titleLarge!.fontSize,
                ),
              ),
              onTap: () {
                Clipboard.setData(ClipboardData(text: values.password));
                setState(() {
                  bordercolor = primarycolor;
                  copyvis = true;
                });
                Timer(const Duration(milliseconds: 500), () {
                  setState(() {
                    bordercolor = bgcolor;
                    copyvis = false;
                  });
                });
              },
            ),
          ),
          copyvis ? const Text('copy') : Text('not copy'),
        ],
      ),
    );
  }
}
