import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/router/app_router.dart';

class AddressFlotButton extends StatelessWidget {
  const AddressFlotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: JColors.primary,
      foregroundColor: JColors.white,
      onPressed: () {
        AppRouter.pushNamed("add-new-address");
      },
      child: Icon(Icons.add),
    );
  }
}
