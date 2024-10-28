import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       SafeArea(child: CustomBookDetalisAppBar())
      ],
    );
  }
}

class CustomBookDetalisAppBar extends StatelessWidget {
  const CustomBookDetalisAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(
          onPressed: (){}, 
          icon:const  Icon(Icons.close)
          ),
          const Spacer(),
        IconButton(
          onPressed: (){}, 
          icon:const  Icon(Icons.shopping_cart_outlined)
          ),
      ],
    );
  }
}