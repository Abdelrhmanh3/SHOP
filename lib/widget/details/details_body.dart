import 'package:flutter/material.dart';
import 'package:shop_start/constants.dart';
import 'package:shop_start/models/product.dart';
import 'package:shop_start/widget/details/color_dot.dart';
import 'package:shop_start/widget/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * .5),
          // height: 425,
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillcolor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillcolor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillcolor: Colors.red,
                      isSelected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding / 2,
                ),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Text(
                'السعر:\$${product.price}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding * .5,
              )
            ],
          ),
        ),
        Container(
          margin:
              EdgeInsetsDirectional.symmetric(vertical: kDefaultPadding / 6),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        )
      ],
    );
  }
}
