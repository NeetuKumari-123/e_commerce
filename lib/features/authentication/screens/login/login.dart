import 'package:e_commerce/features/authentication/screens/login/login_form.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_divider.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_footer.dart';
import 'package:e_commerce/utils/common/widgets/auth_common/auth_header.dart';
import 'package:e_commerce/utils/common/styles/pedding.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';

import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///---------[Header]---------

              
              AuthHeader(title: UTexts.loginTitle,subTitle: UTexts.loginSubTitle,),

              SizedBox(height: USizes.spaceBtwSections),

              ///-------------[Form]-------------------
              LoginForm(),

              SizedBox(height: USizes.spaceBtwSections),

              ///----------------[Divider]------------------
              AuthDivider(),

              SizedBox(height: USizes.spaceBtwSections),

              ///-------------------[Footer]----------------

  
              AuthFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
