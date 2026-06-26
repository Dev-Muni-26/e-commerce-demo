import 'package:e_commerce/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/cart/widget/cart_item.dart';
import 'package:e_commerce/features/shop/screens/checkout_screen/checkout.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("cart", style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Item in cart
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckOutScreen()),
            child: const Text("Check Out Rs.38,000"),
          ),
        ),
      ),
    );
  }
}






