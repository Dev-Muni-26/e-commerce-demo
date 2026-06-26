import 'package:e_commerce/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// --Brands
            const TBrandShowcase(
              images: [
                TImages.productTvImage1,
                TImages.productAsusImage2,
                TImages.productShirtImage1
              ],
            ),
            const TBrandShowcase(
              images: [
                TImages.productTvImage1,
                TImages.productAsusImage2,
                TImages.productShirtImage1
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            /// -- Products
            TSectionHeading(title: "You Might like", onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCartVertical()),
          ],
        ),
      ),
    ],
    );
  }
}
