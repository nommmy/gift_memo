import 'package:flutter/material.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';

class AnniversaryHeader extends StatelessWidget {
  final AnnivWithGiftRecipient anniversary;
  const AnniversaryHeader({super.key, required this.anniversary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(anniversary.name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
        Wrap(spacing: 4, children: [
          ...anniversary.recipients!.map((recipient) => CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/user_icon/${recipient.icon}.webp'),
              ))
        ])
      ],
    );
  }
}
