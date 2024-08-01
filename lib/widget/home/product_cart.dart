import 'package:flutter/material.dart';
import 'package:shop_start/screens/details_screen.dart';

import '../../constants.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.itemindex,
      required this.product,
      required this.press});
  final int itemindex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size abbb = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      height: 190,
      alignment: Alignment.bottomCenter,
      // color: Colors.green,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DeatilsScreen(
                product: product,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12)
                ],
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 155,
                  width: 180,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: 146,
                  width: abbb.width - 185,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          product.subTitle,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      // Spacer(),
                      Padding(
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 2,
                              vertical: kDefaultPadding / 12),
                          decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('السعر: \$${product.price}'),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
