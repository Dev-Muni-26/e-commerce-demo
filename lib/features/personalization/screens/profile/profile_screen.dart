import 'package:e_commerce/widgets/appbar/appbar.dart';
import 'package:e_commerce/widgets/images/t_circular_image.dart';
import 'package:e_commerce/widgets/texts/section_headings.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      /// Body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user1, width: 80,height: 80),
                    TextButton(onPressed: (){}, child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),
              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              /// Heading profile info
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onTap: () {  }, title: 'Name', value: 'Sofie'),
              TProfileMenu(onTap: () {  }, title: 'Username', value: 'Genius'),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading personal info
              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onTap: () {  }, title: 'User-ID', value: '12626', icon: Iconsax.copy),
              TProfileMenu(onTap: () {  }, title: 'E-mail', value: 'sofie236@gmail.com'),
              TProfileMenu(onTap: () {  }, title: 'Phone Number', value: '+91 98765 43210'),
              TProfileMenu(onTap: () {  }, title: 'Gender', value: 'Guess'),
              TProfileMenu(onTap: () {  }, title: 'Date Of Birth', value: '1 Jan 1000'),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text("Close Account", style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

