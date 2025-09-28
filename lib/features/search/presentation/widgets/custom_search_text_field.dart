import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          disabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: (){}, icon: Opacity(
              opacity: .8,
              child: Icon(Icons.search_rounded)))
      ),

    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12,),borderSide: BorderSide(color: Colors.white)
    );
  }
}