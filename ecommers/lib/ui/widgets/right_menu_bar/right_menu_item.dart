import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ecommers/ui/decorations/index.dart';
import 'models/colors_model.dart';
import 'models/price_model.dart';
import 'models/right_menu_item_model.dart';
import 'models/subtitle_model.dart';

class RightMenuItem extends StatelessWidget {
  final RightMenuItemModel itemModel;

  final double height;

  RightMenuItem({this.itemModel, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 25.0),
            Expanded(
              child: Text(
                itemModel.title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(child: _subTitleWidget(context, itemModel)),
            ),
            const SizedBox(width: 10.0),
            SvgPicture.asset(Assets.menuArrowIcon),
            const SizedBox(width: 15.0),
          ],
        ),
    );
  }
}

@override
Widget _subTitleWidget(BuildContext context, RightMenuItemModel itemModel) {
  if (itemModel is ColorsModel) {
    var listColors = itemModel;

    return Stack(
        children: listColors.colors
            .map((color) =>
                circleBuilder(color, listColors.colors.indexOf(color)))
            .toList());
  }
  if (itemModel is SubTitleModel) {
    var subTitleModel = itemModel;
    return Text(
      subTitleModel.subTitle,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          .copyWith(fontWeight: FontWeight.w200),
    );
  }
  if (itemModel is PriceModel) {
    var priceModel = itemModel;
    var _minPrice = priceModel.minPrice;
    var _maxPrice = priceModel.maxPrice;

    return Text(
      '\$ $_minPrice - \$ $_maxPrice',
      style: Theme.of(context)
          .textTheme
          .subtitle2
          .copyWith(fontWeight: FontWeight.w200),
    );
  }
  return Text('null');
}

Widget circleBuilder(String color, int index) {
  return Row(children: <Widget>[
    Container(
        width: 19,
        height: 19,
        margin:EdgeInsets.only(left: 10.0 * index),
        decoration: BoxDecoration(
          color: fromHex(color),
          shape: BoxShape.circle,
        ))
  ]);
}

 Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }




