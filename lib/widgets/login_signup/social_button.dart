import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/link_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

/// Google and Facebook sign-in buttons that open each provider's login page in the browser.
class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  Future<void> _launchSocialUrl(String url) async {
    try {
      await TDeviceUtils.launchUrl(url);
    } catch (_) {
      Get.snackbar(
        'Unable to open link',
        'Please check your internet connection and try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(300),
            ),
            child: IconButton(
              onPressed: () => _launchSocialUrl(TLinks.googleSignIn),
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.google),
              ),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(300),
            ),
            child: IconButton(
              onPressed: () => _launchSocialUrl(TLinks.facebookLogin),
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
