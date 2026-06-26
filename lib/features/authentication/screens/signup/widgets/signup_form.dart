import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/ternsandconditions_checkbox.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignUpForm extends StatefulWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  State<TSignUpForm> createState() => _TSignUpFormState();
}

class _TSignUpFormState extends State<TSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool _termsAccepted = false;
  bool _obscurePassword = true;

  void _submitSignUp() {
    if (!_termsAccepted) {
      Get.snackbar(
        'Terms Required',
        'Please accept the privacy policy and terms of use to continue.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (_formKey.currentState!.validate()) {
      Get.to(() => const VerifyEmailScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      TValidator.validateEmptyText(value, TTexts.firstName),
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      TValidator.validateEmptyText(value, TTexts.lastName),
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// User Name
          TextFormField(
            expands: false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) =>
                TValidator.validateEmptyText(value, TTexts.username),
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: TValidator.validateEmail,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            expands: false,
            keyboardType: TextInputType.phone,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: TValidator.validatePhoneNumber,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: _obscurePassword,
            obscuringCharacter: '*',
            expands: false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: TValidator.validatePassword,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Iconsax.eye_slash : Iconsax.eye,
                ),
                onPressed: () {
                  setState(() => _obscurePassword = !_obscurePassword);
                },
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Terms and conditions checkbox
          TTermsAndConditionsCheckBox(
            value: _termsAccepted,
            onChanged: (value) {
              setState(() => _termsAccepted = value ?? false);
            },
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _submitSignUp,
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
