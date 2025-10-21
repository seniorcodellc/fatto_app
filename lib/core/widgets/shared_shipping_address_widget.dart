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
        CustomTextField(hintText: "Enter full name"),
        SharedTextStar(text: "Phone Number"),
        CustomTextField(hintText: "+20",isPhone: true,),
        SharedDropDownField(hint: 'Select Province'),
        SizedBox(height: 12,),
        SharedDropDownField(hint: 'Select City'),
        SharedTextStar(text: "Street Address"),
        CustomTextField(hintText: "Enter street address"),
        SharedTextStar(text: "Postal Code"),
        CustomTextField(hintText: "Enter postal code"),
        SizedBox(height: 36),
        CustomButton(buttonText: "Save", onTap: () {}),
        SizedBox(height: 20),
      ],
    );
  }
}
