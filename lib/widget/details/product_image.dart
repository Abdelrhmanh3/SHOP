import 'package:flutter/material.dart';
import 'package:shop_start/constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size, required this.image});

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: kDefaultPadding),
      height: size.height * 0.4,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.height * 0.32,
            width: size.width * 0.6,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.width * .50,
            width: size.width * .50,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
