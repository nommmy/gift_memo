import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  final Function onClickEvent;
  const WideButton({super.key, required this.onClickEvent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 36,
        child: TextButton(
            onPressed: onClickEvent(),
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              padding: EdgeInsets.zero,
            ),
            child: const Text('記念日を追加',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white))));
  }
}
