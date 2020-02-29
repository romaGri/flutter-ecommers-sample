import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/widgets.dart';

import '../../../decorations/dimens/index.dart';

class ColorsModel extends RightMenuItemModel {
  final List<String> colors;

  ColorsModel({String title, this.colors}) : super(title: title);

  @override
  Widget create() {
    return Stack(
        children: colors
            .map((color) => circleBuilder(color, colors.indexOf(color)))
            .toList());
  }
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
