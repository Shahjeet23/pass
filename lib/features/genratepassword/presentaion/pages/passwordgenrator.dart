import 'package:flutter/material.dart';

import 'package:pass/constant/const.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/copyresult.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/header.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/passwordlength.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/passwordsetting.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/passworedbutton.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

class PasswordGenratePage extends StatelessWidget {
  const PasswordGenratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PasswordGenratePage();
  }
}

class _PasswordGenratePage extends StatelessWidget {
  const _PasswordGenratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<PasswordStateProvider>(
          builder: (context, value, child) => const SingleChildScrollView(
              padding: EdgeInsets.all(defaultpadding),
              child: Column(
                children: [
                  Header(),
                  Passwordlength(),
                  Passwordsetting(),
                  Copyresult(),
                  PasswordButton(),
                ],
              )),
        ),
      ),
    );
  }
}
