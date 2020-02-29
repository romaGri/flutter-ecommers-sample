import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubTitleModel extends RightMenuItemModel {
  final String subTitle;

  SubTitleModel({String title, this.subTitle})
      : super(
          title: title,
        );

  @override
  Widget create() {
    return Text(subTitle);
  }
}
