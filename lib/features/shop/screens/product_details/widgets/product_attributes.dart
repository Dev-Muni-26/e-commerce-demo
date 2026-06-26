import 'package:e_commerce/widgets/container/t_rounded_container.dart';
import 'package:e_commerce/widgets/texts/product_title_text.dart';
import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:e_commerce/widgets/texts/t_product_price_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/chips/choice_chips.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attributes pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title , price & Stock status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "Price : ", smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Actual Price
                          Text(
                            "Rs.699",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Sale Price
                          const TProductPriceText(price: '399'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true),
                          Text("In Stock",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    "The Description of the product can extends as per needs",
                smallSize: true,
                maxlines: 4,
              ),
            ],
          ),
        ),

        /// --- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
         Wrap(
           spacing: 8,
           children: [
             TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
             TChoiceChip(text: 'Blue', selected: false,onSelected: (value){},),
             TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){},),
           ],
         )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(text: '10', selected: true,onSelected: (value){},),
              TChoiceChip(text: '11', selected: false,onSelected: (value){},),
              TChoiceChip(text: '07', selected: false,onSelected: (value){},),
            ],
          ),
          ],
        ),
      ],
    );
  }
}


