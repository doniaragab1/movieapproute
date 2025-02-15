import 'package:flutter/material.dart';

class ElvBtn extends StatelessWidget {
  final String txt;
  final Color txtColor;
  final Color btnColor;
  final void Function() action;
  const ElvBtn({super.key, required this.txt, required this.action, required this.txtColor, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all<Color>(btnColor)),
      child: Text(txt,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: txtColor)),
    );
  }
}
