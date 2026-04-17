



import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UOutlinedButton extends StatelessWidget {
 const UOutlinedButton({
    super.key, required this.onPressed, required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
        child: OutlinedButton(onPressed: onPressed, child: child));
  }
}



