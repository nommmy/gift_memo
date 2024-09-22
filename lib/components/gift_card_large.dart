import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GiftCardLarge extends StatelessWidget {
  // TODO: カテゴリで初期化するやつ
  final String? imageUrl;
  final String name;
  final int price;
  final String? shop;
  const GiftCardLarge(
      {super.key, this.imageUrl, required this.name, required this.price, this.shop});

  final double _WIDTH = 220;
  final double _HEIGHT = 280;
  final double _IMAGE_WIDTH = 150;
  final double _POSITION_TOP = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: _WIDTH,
          height: _HEIGHT,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  top: _POSITION_TOP,
                  child: Container(
                    width: _WIDTH,
                    height: _HEIGHT - _POSITION_TOP,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19393939),
                          blurRadius: 20,
                          offset: Offset(0, 20),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            SizedBox(
                              height: _IMAGE_WIDTH - _POSITION_TOP,
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: [
                                      Text(name,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      if (shop != null && shop!.isNotEmpty)
                                        Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8),
                                            child: Opacity(
                                                opacity: 0.5,
                                                child: Text(shop!,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(fontSize: 12))))
                                    ],
                                  )),
                            ),
                            SizedBox(
                                height: 40,
                                child: Text('¥ ${NumberFormat('#,##0').format(price)}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ))),
                          ],
                        )),
                  )),
              Positioned(
                left: (_WIDTH - _IMAGE_WIDTH) / 2,
                top: 0,
                child: SizedBox(
                  width: _IMAGE_WIDTH,
                  height: _IMAGE_WIDTH,
                  child: Container(
                    width: _IMAGE_WIDTH,
                    height: _IMAGE_WIDTH,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/gift_default_image/chocolate.webp'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.white, width: 5),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19393939),
                          blurRadius: 60,
                          offset: Offset(0, 20),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
