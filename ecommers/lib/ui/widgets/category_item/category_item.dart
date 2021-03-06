import 'package:ecommers/ui/decorations/dimens/index.dart';
import 'package:ecommers/core/common/index.dart';
import 'package:ecommers/ui/widgets/category_item/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  final Gradient labelBackgroundGradient;
  final Color shadowColor;
  final Color backgroundColor;
  final String imagePath;
  final String title;
  final Function() onTapFunction;

  static const size = Size(74.0, 89.0);
  static const categoryLabelSize = 65.0;

  const CategoryItem({
    @required this.shadowColor,
    @required this.imagePath,
    @required this.title,
    this.labelBackgroundGradient,
    this.backgroundColor,
    this.onTapFunction,
  });

  factory CategoryItem.fromType(Categories categoryType) {
    final categoryItem = categoryItems[categoryType];

    return CategoryItem(
      labelBackgroundGradient: categoryItem.gradient,
      shadowColor: categoryItem.shadowColor,
      imagePath: categoryItem.imagePath,
      title: categoryItem.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        width: size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildGradientLabel(),
            const SizedBox(
              height: labelBottomMargin,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontSize: FontSizes.normal),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientLabel() {
    return Container(
      alignment: Alignment.center,
      height: categoryLabelSize,
      width: categoryLabelSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
              color: shadowColor,
              blurRadius: Radiuses.big_1x,
              offset: Dimens.defaultBlurOffset),
        ],
        gradient: labelBackgroundGradient,
      ),
      child: Center(
        child: SvgPicture.asset(
          imagePath,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
