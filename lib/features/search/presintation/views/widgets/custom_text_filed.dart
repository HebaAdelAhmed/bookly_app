import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
                color: Colors.white
            )
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: Opacity(
            opacity: 0.8,
            child: SvgPicture.asset('assets/images/search.svg' ,),
          ),
          iconSize: 14,
          onPressed: (){

          },
        ),
      ),
    );
  }
}
