import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';

class BrandFilterSection extends StatelessWidget {
  const BrandFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.filter_list),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            JSizes.borderRadiusLg.r,
          ),
          borderSide: BorderSide(color: JColors.grey),
        ),
      ),
      hint: Text("Filter"),
      items: [],
      onChanged: (val) {},
    );
  }
}
