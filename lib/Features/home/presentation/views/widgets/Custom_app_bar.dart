import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo,
        height: 22,),
        const Spacer(),
        IconButton(onPressed: (){},
         icon: const Icon(FontAwesomeIcons.magnifyingGlass,
         size: 24,)
         )
      ],
    );
  }
}