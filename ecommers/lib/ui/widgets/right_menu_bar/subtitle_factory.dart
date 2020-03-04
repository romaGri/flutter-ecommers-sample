import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';
import 'package:ecommers/extensions/string_extension.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';

class SubTitleFactory {
  Widget create(RightMenuItemModel model) {
    final modelItem = model.runtimeType;
    switch (modelItem) {
      case SubTitleModel:
        return createSubTitle(model as SubTitleModel);
        break;
      case PriceModel:
        return createPrice(model as PriceModel);
        break;
      case ColorsModel:
        final modelType = model as ColorsModel;
        return createCircles(modelType.colors);
        break;
      default:
        return const Text('');
    }
  }
}

Widget createSubTitle(SubTitleModel subTitleModel) {
  return Opacity(
    opacity: 0.5,
    child: Text(
      subTitleModel.subTitle,
    ),
  );
}

Widget createPrice(PriceModel priceModel) {
  return Opacity(
    opacity: 0.5,
    child: Text(
      '\$${priceModel.minPrice} - \$${priceModel.maxPrice}',
    ),
  );
}

Widget createCircles(List<String> colors) {
  return Stack(
    children: colors
        .map((color) =>
            circleBuilder(color, colors.length - colors.indexOf(color)))
        .toList(),
  );
}

Widget circleBuilder(String color, int index) {
  return Container(
    width: Insets.x5,
    height: Insets.x5,
    margin: EdgeInsets.only(left: Insets.x3 * index),
    decoration: BoxDecoration(
      color: color.fromHex(),
      shape: BoxShape.circle,
    ),
  );
}
