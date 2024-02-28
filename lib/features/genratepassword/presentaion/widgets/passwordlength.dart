import 'package:flutter/material.dart';

import 'package:pass/constant/const.dart';
import 'package:pass/provider.dart';
import 'package:provider/provider.dart';

class Passwordlength extends StatefulWidget {
  const Passwordlength({Key? key}) : super(key: key);

  @override
  _PasswordlengthState createState() => _PasswordlengthState();
}

class _PasswordlengthState extends State<Passwordlength> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordStateProvider>(
      builder: (context, values, child) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'Password length',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      thumbColor: primarycolor,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 1)),
                  child: Slider(
                    value: values.passwordLenght.toDouble(),
                    min: 6,
                    max: values.isUppercase || values.isLowercase ? 32 : 10,
                    onChanged: (value) => (values.changePasswordLength(value)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: primarycolor.withOpacity(0.35)),
                    borderRadius: BorderRadius.circular(defaultpadding),
                  ),
                  child: Center(
                    child: Text(
                      values.passwordLenght.toString(),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
