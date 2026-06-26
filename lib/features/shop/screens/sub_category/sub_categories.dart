import 'package:e_commerce/widgets/appbar/appbar.dart';
import 'package:e_commerce/widgets/images/t_rounded_images.dart';
import 'package:e_commerce/widgets/products/product_cart/product_cart_horizontal.dart';
import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports Shoes"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            const TRoundedImage(
              width: double.infinity,
              imageUrl: TImages.productShoeImage1,
              applyImageRadius: true,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Sub - category
            Column(
              children: [
                /// Heading
                TSectionHeading(title: " Sport Shoes" ,onPressed: (){} ),
                const SizedBox(height: TSizes.spaceBtwItems),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
