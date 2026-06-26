import 'package:flutter/material.dart';

import '../../../../../widgets/products/cart/add_remove_button.dart';
import '../../../../../widgets/products/cart/cart_item.dart';
import '../../../../../widgets/texts/t_product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';


class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),

          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          /// Add or remove item
          if (showAddRemoveButton)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Extra space
              Row(
                children: [
                  SizedBox(width: 70),

                  /// Add or Remove product button
                  TProductQuantityWithAddAndRemove(),
                ],
              ),
              TProductPriceText(price: '38,000'),
            ],
          ),
        ],
      ),
    );
  }
}