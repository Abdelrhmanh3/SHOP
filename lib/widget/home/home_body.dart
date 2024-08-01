import 'package:flutter/material.dart';
import 'package:shop_start/constants.dart';
import 'package:shop_start/models/product.dart';
import 'package:shop_start/screens/details_screen.dart';
import 'package:shop_start/widget/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Size abbb = MediaQuery.of(context).size;
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60.0),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemindex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeatilsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
