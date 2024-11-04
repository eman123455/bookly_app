import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: (){}, 
              icon: const Opacity(
                opacity: 0.7,
                child:  Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: 24,
                            ),
              ),
              ),
            hintText: 'Search ',
            border: buildOutlineInputBorder() ,
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            ),
            );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
            borderSide: const  BorderSide(
              color: Colors.white
            ),
            borderRadius: BorderRadius.circular(16),
          );
  }
}
