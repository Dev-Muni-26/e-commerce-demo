import 'package:e_commerce/widgets/container/t_rounded_container.dart';
import 'package:e_commerce/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfile1),),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text("Stan Lee", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        /// Reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('26 Apr 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'Arrived fine but after wearing them to work I found that they were so uncomfortable. Have just spoken to Nike on their chat service and they will not accept them back because they have been worn outside. They are practically perfect. How is one supposed to really know how a trainer feels unless they walk around a lot in them? Poor service I believe.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "  Less",
          trimCollapsedText: " Show more",
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: TColors.primary),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.bodyLarge),
                    Text("27 Apr 2024", style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Arrived fine but after wearing them to work I found that they were so uncomfortable. Have just spoken to Nike on their chat service and they will not accept them back because they have been worn outside. They are practically perfect. How is one supposed to really know how a trainer feels unless they walk around a lot in them? Poor service I believe.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "  Less",
                  trimCollapsedText: " Show more",
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
