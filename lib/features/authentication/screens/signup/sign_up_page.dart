import 'package:flutter/material.dart';
import 'package:hm_e_commerce/utils/constants/sizes.dart';
import 'package:hm_e_commerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HMSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(HMTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: HMSizes.spaceBtwSections),

              /// Form
              Form(
                child: Column(
                  children: [
                    /// First & last Name
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: HMTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(
                          width: HMSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: HMTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),

                    /// Username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: HMTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    const SizedBox(
                      width: HMSizes.spaceBtwInputFields,
                    ),

                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: HMTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    const SizedBox(
                      width: HMSizes.spaceBtwInputFields,
                    ),

                    /// Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: HMTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    const SizedBox(
                      width: HMSizes.spaceBtwInputFields,
                    ),

                    /// Password
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: HMTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(
                      width: HMSizes.spaceBtwSections,
                    ),

                    /// terms & Condition CheckBox
                    Row(
                      children: [
                        SizedBox(
                          height: 24,
                            width: 24,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        const SizedBox(width: HMSizes.spaceBtwItems,),
                      ],
                    )

                    /// Sign Up Button
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
