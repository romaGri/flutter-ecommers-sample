import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';

import '../../decorations/dimens/index.dart';

class SubTitleFactory {
  Widget create(RightMenuItemModel model) {
    if (model is SubTitleModel) {
      return createSubTitle(model);
    }

    if (model is PriceModel) {
      return createPrice(model);
    }

    if (model is ColorsModel) {
      final listColors = model;
      return createCircles(listColors.colors);
    }
  }
}

Widget createSubTitle(SubTitleModel subTitleModel) {
  return Text(subTitleModel.subTitle);
}

Widget createPrice(PriceModel priceModel) {
  return Text('\$${priceModel.minPrice} - \$${priceModel.maxPrice}');
}

Widget createCircles(List<String> colors) {
  return Stack(
      children: colors
          .map((color) => circleBuilder(color, (colors.length - colors.indexOf(color))))
          .toList());
}

Widget circleBuilder(String color, int index) {
  return Container(
      width: Insets.x5,
      height: Insets.x5,
      margin: EdgeInsets.only(left: Insets.x2_5 * index),
      decoration: BoxDecoration(
        color: fromHex(color),
        shape: BoxShape.circle,
      ));
}

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
