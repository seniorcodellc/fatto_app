// import 'package:flutter/material.dart';
//
// import '../../../../core/utils/app_colors.dart';
// import '../../../../core/utils/app_styles.dart';
// import '../../data/models/offered_product_model.dart';
//
// class OfferedProductContent extends StatelessWidget {
//   OfferedProductContent({super.key,});
//   OfferedProductsModel model = OfferedProductsModel();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 59,
//           height: 24,
//           decoration: BoxDecoration(
//             color: AppColors.primaryColor,
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Center(
//             child: Text(
//               model.salePercentage!,
//               style: AppStyles.font10PrimaryColor.copyWith(
//                 color: AppColors.fontWhiteColor,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 6),
//         Text('On Handmade', style: AppStyles.font12White),
//         Text('Exclusive Sales', style: AppStyles.font24White),
//       ],
//     );
//   }
// }
