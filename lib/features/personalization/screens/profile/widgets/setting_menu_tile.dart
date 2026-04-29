

import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({
    super.key, required this.title, required this.subtitle, required this.icon,
  });

final String title , subtitle;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title:  Text(title, style: Theme.of(context).textTheme.titleMedium,),
     subtitle:  Text(subtitle, style: Theme.of(context).textTheme.labelMedium,) ,
     leading:Icon(icon),
    );
  }
}
