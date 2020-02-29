import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommers/ui/decorations/index.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';

import 'models/right_menu_item_model.dart';

@immutable
class RightMenuItem extends StatelessWidget {
  final RightMenuItemModel itemModel;

  const RightMenuItem({this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          const SizedBox(width: Insets.x6),
          Expanded(
            child: Text(
              itemModel.title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(child: _subTitleWidget(context, itemModel)),
          const SizedBox(width: Insets.x2_5),
          SvgPicture.asset(Assets.menuArrowIcon),
          const SizedBox(width: Insets.x4),
        ],
      ),
    );
  }
}

@override
Widget _subTitleWidget(BuildContext context, RightMenuItemModel itemModel) {
  return itemModel.create();
}


