import 'package:flutter/material.dart';
import 'package:gift_memo/components/gift_card_large.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';

class GiftListHorizontal extends StatelessWidget {
  final AnnivWithGiftRecipient anniversary;
  const GiftListHorizontal({super.key, required this.anniversary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 330,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          children: [
            if (anniversary.gifts!.isNotEmpty)
              Wrap(
                spacing: 16,
                children: [
                  ...anniversary.gifts!.map((gift) => GiftCardLarge(
                        imageUrl: gift.imageUrl,
                        name: gift.name,
                        price: gift.price,
                        shop: gift.shop,
                      ))
                ],
              )
            else
              const Center(
                child: Text('ギフトがありません'),
              ),
          ],
        ));
  }
}
