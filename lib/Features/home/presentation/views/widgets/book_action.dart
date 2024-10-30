import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€', 
              backgroundColor: Colors.white
              ,textColor: Colors.black,
              border_Radius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomLeft: Radius.circular(10)),
              ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              border_Radius: BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10)),
            
              ),
          ),
            
        ],
      ),
    );
  }
}