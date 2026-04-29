


import 'package:e_commerce/utils/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/common/widgets/images/user_profile_logo.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return      Stack(
            children: [
              // total height
              SizedBox(height: USizes.profilePrimaryHeaderHeight + 60),

              //primary header
              UPrimaryHeaderContainer(
                height: USizes.profilePrimaryHeaderHeight,
                child: Container(),
              ),

              //user profile
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: UserProfileLogo(),
                ),
              ),
            ],
          );
     
     
  }
}
