import 'package:flutter/material.dart';
import 'package:pass/constant/const.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

class PasswordButton extends StatelessWidget {
  const PasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordStateProvider>(
      builder: (context, values, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          highlightColor: bgcolor,
          splashColor: bgcolor,
          hoverColor: bgcolor,
          onTap: () {
            values.changePassword();
          },
          child: Container(
            child: Text(
              "genrate password",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: defaultpadding),
            padding: EdgeInsets.symmetric(horizontal: defaultpadding),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultpadding),
              gradient: LinearGradient(
                colors: [primarycolor, bgcolor],
              ),
              boxShadow: [
                const BoxShadow(
                    color: primarycolor,
                    offset: Offset(-2, 0),
                    blurRadius: 3,
                    spreadRadius: 1),
                const BoxShadow(
                    color: secondarycolor,
                    offset: Offset(-2, 0),
                    blurRadius: 3,
                    spreadRadius: 1)
              ],
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
