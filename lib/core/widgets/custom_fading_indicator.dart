import 'package:flutter/material.dart';

class CustomFadingIndicator extends StatefulWidget {
  const CustomFadingIndicator({super.key, required this.child});
final Widget child;
  @override
  State<CustomFadingIndicator> createState() => _CustomFadingIndicatorState();
}

class _CustomFadingIndicatorState extends State<CustomFadingIndicator> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 800));
     animation = Tween<double>(begin: .2,end: .8).animate(_animationController);
     _animationController.addListener((){
       setState(() {

       });
     });
     _animationController.repeat(reverse: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Opacity(opacity:animation.value ,child: widget.child,);
  }
}
