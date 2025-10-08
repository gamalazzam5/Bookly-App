import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.onPressed, required this.controller, this.onChanged});
final VoidCallback onPressed;
final TextEditingController controller;
final ValueChanged<String>? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:  onChanged,
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          disabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: onPressed, icon: Opacity(
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