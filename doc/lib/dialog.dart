import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogwid extends StatelessWidget {
  const Dialogwid({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Emergency!"),
      content: Text("An ambulance is incoming to your emergency room "),
      actions: [
        CupertinoDialogAction(
          child: Text("Yes"),
        ),
        CupertinoDialogAction(
          child: Text("No"),
        )
      ],
    );
  }
}
