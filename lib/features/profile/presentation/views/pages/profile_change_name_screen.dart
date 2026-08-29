import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class ProfileChangeNameScreen extends StatelessWidget {
  const ProfileChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: JAppBar(title: JText.changeName),

      //BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                JText.updateName,
                style: context.tt.bodyMedium,
                textAlign: TextAlign.start,
              ),
              16.verticalSpace,
              TextField(
                decoration: InputDecoration(
                  hintText: JText.firstNameLabel,
                  prefixIcon: Icon(
                    CupertinoIcons.person,
                    size: JSizes.iconSm.r,
                  ),
                ),
              ),
              16.verticalSpace,
              TextField(
                decoration: InputDecoration(
                  hintText: JText.lastNameLabel,
                  prefixIcon: Icon(
                    CupertinoIcons.person,
                    size: JSizes.iconSm.r,
                  ),
                ),
              ),
              24.verticalSpace,
              JElevatedButton(onPressed: () {}, buttonText: JText.save),
            ],
          ),
        ),
      ),
    );
  }
}
