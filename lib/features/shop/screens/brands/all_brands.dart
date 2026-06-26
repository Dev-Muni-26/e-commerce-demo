import 'package:e_commerce/widgets/appbar/appbar.dart';
import 'package:e_commerce/widgets/brands/t_brand_card.dart';
import 'package:e_commerce/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:e_commerce/features/shop/screens/brands/brand_product.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreem extends StatelessWidget {
  const AllBrandScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(title: "Brands", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Brands
              TGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProduct()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
