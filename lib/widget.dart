import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  @override
  State<MyContainer> createState() => _MyContainerState();
  Color color = Colors.grey.shade900;
  Widget? child;

  MyContainer({  this.child});
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade900,
      ),
      child: widget.child,
      margin: EdgeInsets.all(10),
    );
  }
}
