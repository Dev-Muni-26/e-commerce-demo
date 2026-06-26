import 'package:flutter/material.dart';

import '../../../../../widgets/texts/section_headings.dart';
import '../../../../../utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'change', onPressed: (){}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Text('Obama', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("+91 98765-43210" , style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("India Dubai AbuDaubi Qatar" , style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
