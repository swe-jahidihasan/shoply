import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/profile/presentation/manager/controller/profile_controller.dart';
import 'package:shoply/features/profile/presentation/views/widgets/address_cart.dart';
import 'package:shoply/features/profile/presentation/views/widgets/address_floating_action_button.dart';

class ProfileAddressScreen extends StatelessWidget {
  const ProfileAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      // appbar
      appBar: JAppBar(title: JText.address),

      //BODY
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          itemCount: 4,
          separatorBuilder: (context, index) => 12.verticalSpace,
          itemBuilder: (context, index) {
            return Obx(() {
              final isSelected = controller.selectedCard == index;
              return AddressCard(
                controller: controller,
                isSelected: isSelected,
                name: "Unknown Pro",
                phone: "+92123456789",
                address: "House No.295, Hyderabad, Sindh, Pakistan",
                onTap: () {
                  controller.onSelectAddressCard(index);
                },
              );
            });
          },
        ),
      ),
      //todo: floating button
      floatingActionButton: const AddressFlotButton(),
    );
  }
}
