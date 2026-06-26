import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:e_commerce/features/shop/screens/checkout_screen/checkout.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/features/shop/screens/product_review/product_reviews.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Product Image Slider
            const TProductImageSlider(),

            ///  -- Product Details
            Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Rating & share button
                const TRatingAndShare(),

                /// -- Price , title , stock , Brand.
                const TProductMetaData(),

                /// -- Attributes
                const TProductAttributes(),

                const SizedBox(height: TSizes.spaceBtwSections),
                
                /// -- checkbox button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () => Get.to(() => const CheckOutScreen()), child: const Text("Check Out"),),),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// -- descriptions
                const TSectionHeading(title: "Description", showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwSections),
                const ReadMoreText(
                  "A product description is a piece of marketing copy that explains the features and benefits of a product. It can be a sentence, a paragraph, or bullet points. The goal of a product description is to provide customers with information that will compel them to buy.",
                trimCollapsedText: 'Show More',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// -- reiews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(title: 'Review (199)', showActionButton: false),
                    IconButton(onPressed: () => Get.to(() => const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18),)
                  ],
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}




