import 'package:fatto/features/profile/presentation/widgets/shared_drop_down_field.dart';
import 'package:flutter/material.dart';

import '../../features/profile/presentation/widgets/shared_text_star.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';

class SharedShippingAddressWidget extends StatelessWidget {
  const SharedShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SharedTextStar(text: "Full Name"),
        SizedBox(height: 8),
        CustomTextField(hintText: "Enter full name"),
        SizedBox(height: 12),
        SharedTextStar(text: "Phone Number"),
        SizedBox(height: 8),
        CustomTextField(hintText: "+20"),
        SizedBox(height: 12),
        SharedDropDownField(hint: 'Select Province'),
        SizedBox(height: 12),
        SharedDropDownField(hint: 'Select City'),
        SizedBox(height: 12),
        SharedTextStar(text: "Street Address"),
        SizedBox(height: 8),
        CustomTextField(hintText: "Enter street address"),
        SizedBox(height: 12),
        SharedTextStar(text: "Postal Code"),
        SizedBox(height: 8),
        CustomTextField(hintText: "Enter postal code"),
        SizedBox(height: 36),
        CustomButton(buttonText: "Save", onTap: () {}),
      ],
    );
  }
}
