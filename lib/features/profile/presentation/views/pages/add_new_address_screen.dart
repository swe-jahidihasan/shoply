import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/common/widgets/input_field.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/profile/presentation/manager/controller/profile_controller.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      // appbar
      appBar: JAppBar(title: JText.addANewAddress),

      //BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            children: [
              JInputField(
                controller: controller.nameCtr,
                labelText: JText.nameLabel,
                hintText: JText.nameHint,
                prefixIcon: Icon(CupertinoIcons.person),
              ),
              16.verticalSpace,
              JInputField(
                controller: controller.phoneCtr,
                labelText: JText.phoneL,
                hintText: JText.phoneH,
                prefixIcon: Icon(CupertinoIcons.phone),
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: JInputField(
                      controller: controller.streetCtr,
                      labelText: JText.streetLabel,
                      hintText: JText.streetLabel,
                      prefixIcon: Icon(CupertinoIcons.map),
                    ),
                  ),
                  10.horizontalSpace,
                  Expanded(
                    child: JInputField(
                      controller: controller.postalCodeCtr,
                      labelText: JText.postalLabel,
                      hintText: JText.postalHint,
                      prefixIcon: Icon(CupertinoIcons.number),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: JInputField(
                      controller: controller.cityCtr,
                      labelText: JText.cityLabel,
                      hintText: JText.cityHint,
                      prefixIcon: Icon(CupertinoIcons.building_2_fill),
                    ),
                  ),
                  10.horizontalSpace,
                  Expanded(
                    child: JInputField(
                      controller: controller.stateCtr,
                      labelText: JText.stateLabel,
                      hintText: JText.stateHint,
                      prefixIcon: Icon(CupertinoIcons.waveform_path),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              JInputField(
                controller: controller.countryCtr,
                labelText: JText.countryLabel,
                hintText: JText.countryHint,
                prefixIcon: Icon(CupertinoIcons.globe),
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
