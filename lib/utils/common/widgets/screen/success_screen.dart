







import 'package:e_commerce/utils/common/styles/pedding.dart';
import 'package:e_commerce/utils/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({
    super.key, required this.image, required this.title,
     required this.mail, required this.subTitle,
      required this.onTap, required this.buttonName,
       this.onTapResendEmail,
      this.  isResendEmail=true
  });
final String image;
final String title;
final String mail;
final String subTitle;
final VoidCallback onTap;
final String buttonName;
final VoidCallback? onTapResendEmail;
final bool isResendEmail ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
    
        children: [
      
        ///Image
        Image.asset(image),
        SizedBox(height: USizes.spaceBtwSections,),
      ///Title
         Text(
           title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
      SizedBox(height: USizes.spaceBtwItems,),
    
      ///user mail
    
         Text(textAlign: TextAlign.center,
  mail,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
              SizedBox(height: USizes.spaceBtwItems,),
             ///SubTitle
         Text(textAlign: TextAlign.center,
        subTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
    
             SizedBox(height: USizes.spaceBtwSections,),
    
             /// button
                 UElevatedButton(
                onPressed:onTap,
                child: Text(buttonName),
    
           
                
              ),
             SizedBox(height: USizes.spaceBtwSections/2,),
              ///Resend mail
           isResendEmail==true?    TextButton(
                    onPressed: onTapResendEmail,
                    child: Text(UTexts.resendEmail),
                  ):SizedBox(),
      ],),
    );
  }
}