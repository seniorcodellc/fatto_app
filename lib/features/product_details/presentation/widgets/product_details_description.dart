import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/features/product_details/presentation/widgets/quantity_widget.dart';
import 'package:fatto/features/product_details/presentation/widgets/size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors_circles.dart';
import 'details_description.dart';

class ProductDetailsDescription extends StatefulWidget {
  const ProductDetailsDescription({super.key});

  @override
  _ProductDetailsDescriptionState createState() =>
      _ProductDetailsDescriptionState();
}

class _ProductDetailsDescriptionState extends State<ProductDetailsDescription> {
  bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsDescription(isExpanded: isExpanded, onToggle: toggleExpanded),
        ColorsCircles(),
        if (isExpanded)SizeWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 18.w),
          child: Text(
            'Quantity: ',
            style: AppStyles.font16Black
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 6.0.h),
          child: QuantityWidget(),
        ),
      ],
    );
  }
}

