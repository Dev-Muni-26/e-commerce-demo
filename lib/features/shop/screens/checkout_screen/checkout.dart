import 'package:e_commerce/widgets/container/t_rounded_container.dart';
import 'package:e_commerce/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widget/cart_item.dart';
import 'package:e_commerce/features/shop/screens/checkout_screen/widget/billing_address.dart';
import 'package:e_commerce/features/shop/screens/checkout_screen/widget/billing_amount.dart';
import 'package:e_commerce/features/shop/screens/checkout_screen/widget/billing_payment.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/appbar/appbar.dart';
import '../../../../widgets/products/cart/coupon_widget.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Order Review",
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Item in cart
              const TCartItems(showAddRemoveButton: false),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Coupon TextField
              const TCouponCode(),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Billing Section
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    /// Amount
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods Address
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(
              () => SuccessScreen(
                image: TImages.staticSuccessIllustration,
                title: 'Payment Success!',
                subtitle: 'Your Item Will be shipped Soon',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              ),
            ),
            child: const Text("Check Out Rs.38,000"),
          ),
        ),
      ),
    );
  }
}
