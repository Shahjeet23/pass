import 'package:flutter/material.dart';
import 'package:pass/constant/const.dart';

class Customcheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final VoidCallback onChanged;

  const Customcheckbox(
      {super.key,
      required this.label,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding / 4),
      child: InkWell(
        onTap: onChanged,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: defaultpadding),
          decoration: BoxDecoration(
              border:
                  Border.all(width: 2, color: primarycolor.withOpacity(0.25)),
              borderRadius: BorderRadius.circular(defaultpadding / 2)),
          child: Wrap(
            children: [
              SizedBox(
                width: defaultpadding / 2,
              ),
              Icon(
                value ? Icons.check_box : Icons.check_box_outline_blank,
                size: Theme.of(context).textTheme.titleLarge!.fontSize,
              ),
              SizedBox(
                width: defaultpadding / 2,
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
