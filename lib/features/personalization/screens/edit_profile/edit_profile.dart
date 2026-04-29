import 'package:e_commerce/utils/common/styles/pedding.dart';
import 'package:e_commerce/utils/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/common/widgets/images/user_profile_logo.dart';
import 'package:e_commerce/utils/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: UAppBar(title: Text("Edit Profile", style: Theme.of(context).textTheme.headlineMedium,),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(children: [
          
          // user profile with edit icon
          UserProfileWithEditIcon(),
SizedBox(height: USizes.spaceBtwSections),
//Divider
          Divider(),
          SizedBox(height: USizes.spaceBtwItems),

          //Account Setting Heading
          USectionHeading(title: "Account Settings"),

          UserDetailRow(title: 'Name', value: 'Unknown Pro', onTap: (){},),
          UserDetailRow(title: 'Username', value: 'Unknownpro12', onTap: (){},),
          UserDetailRow(title: 'Name', value: 'Unknown Pro', onTap: (){},),


    SizedBox(height: USizes.spaceBtwItems),
//Divider
          Divider(),
          SizedBox(height: USizes.spaceBtwItems),

              //Account Setting Heading
          USectionHeading(title: "Profile Settings"),

            UserDetailRow(title: 'User ID', value: '321321', onTap: (){},),
          UserDetailRow(title: 'Email', value: 'Unknownpro@gmail.com', onTap: (){},),
          UserDetailRow(title: 'Phone Number', value: '+9765456789', onTap: (){},),
          UserDetailRow(title: 'Gender', value: 'Male', onTap: (){},),

    SizedBox(height: USizes.spaceBtwItems),
    //Divider
          Divider(),
          SizedBox(height: USizes.spaceBtwItems),

          TextButton(onPressed: (){}, child: Text("Close Account", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.red),))

          ],),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key, required this.title, required this.value, this.icon =Iconsax.arrow_right_34, required this.onTap,
  });

  final String title, value;
  final IconData? icon;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: USizes.spaceBtwItems/1.5),
        child: Row(children: [
        
          Expanded(
            flex: 3,
            child: Text(title, style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
          Expanded(
            flex: 5,
            child: Text(value, style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
          Expanded(child: Icon(icon,size: USizes.iconSm,))
        ],),
      ),
    );
  }
}

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
       
       // User Profile Logo
      Center(child: UserProfileLogo()),
    
      Positioned
      
      (
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Center(child: UCircularIcon(icon: Iconsax.edit,)))
    ],);
  }
}