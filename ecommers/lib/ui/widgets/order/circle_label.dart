import 'package:ecommers/ui/decorations/index.dart';
import 'package:flutter/material.dart';

class CircleLabel extends StatelessWidget {
  final Widget image;
  final Size size;

  CircleLabel({
    @required this.image,
    @required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BrandingColors.background,
      ),
      child: image,
    );
  }
}