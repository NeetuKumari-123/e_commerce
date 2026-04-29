

import 'package:flutter/material.dart';

import '../../../constants/images.dart';
import 'circular_image.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UCircularImage(
      width: 120,
      height: 120,
      image: UImages.profile,borderWidth: 5.0,
      padding: 0,
    );
  }
}
