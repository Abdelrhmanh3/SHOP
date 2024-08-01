import 'package:flutter/material.dart';
import 'package:shop_start/constants.dart';
import 'package:shop_start/models/product.dart';
import 'package:shop_start/widget/details/details_body.dart';

class DeatilsScreen extends StatelessWidget {
  const DeatilsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined)),
        centerTitle: false,
        title: Text(
          'back',
          style: Theme.of(context).textTheme.titleMedium,
        ));
  }
}
