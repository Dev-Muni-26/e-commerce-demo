import 'package:e_commerce/widgets/appbar/appbar.dart';
import 'package:e_commerce/widgets/brands/t_brand_card.dart';
import 'package:e_commerce/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text("Samsung"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              TBrandCard(showBorder: true),

              SizedBox(height: TSizes.spaceBtwItems),

              TSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
