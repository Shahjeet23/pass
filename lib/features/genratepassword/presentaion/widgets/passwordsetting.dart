import 'package:flutter/material.dart';
import 'package:pass/features/genratepassword/presentaion/widgets/customcheackbox.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

class Passwordsetting extends StatefulWidget {
  const Passwordsetting({super.key});

  @override
  State<Passwordsetting> createState() => _PasswordsettingState();
}

class _PasswordsettingState extends State<Passwordsetting> {
  bool isLowerCase = false;
  bool isNumbers = false;
  bool isUppercase = false;
  bool isIncludeSpace = false;
  bool isExcludedupicates = false;
  bool isSynmbol = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordStateProvider>(
      builder: (context, values, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Password settings',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'lower case [a-z]',
                          onChanged: () {
                            values.changeLowercase();
                          },
                          value: values.isLowercase,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'Numbaer(0-9)',
                          onChanged: () {
                            values.changeNumber();
                          },
                          value: values.isNumber,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'Exclude duplicates',
                          onChanged: () {
                            values.changeExcludeDulpicate();
                          },
                          value: values.isExcludeuplicates,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'Upper case [a-z]',
                          onChanged: () {
                            values.changeUppercase();
                          },
                          value: values.isUppercase,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'Symbols (!/^/)',
                          onChanged: () {
                            values.changeSymbol();
                          },
                          value: values.isSynmbol,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Customcheckbox(
                          label: 'include space',
                          onChanged: () {
                            values.changeIncludeSpace();
                          },
                          value: values.isIncludedSpace,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
