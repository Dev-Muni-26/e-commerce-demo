import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verification.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        Expanded(
          flex: 2,
          child: TRoundedImage(imageUrl: TImages.productAsusImage1,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkGrey : TColors.light,
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),


        /// Title, price and size
        Expanded(
          flex: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerification(title: "Asus"),
              const TProductTitleText(title: "Black slim Laptop", maxlines: 1),

              /// attributes
              Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Color: ",style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: "Green",style: Theme.of(context).textTheme.bodyLarge),
                      // TextSpan(text: "Size: ",style: Theme.of(context).textTheme.bodySmall),
                      // TextSpan(text: "8",style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}