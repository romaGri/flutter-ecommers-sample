import 'package:flutter/widgets.dart';

import 'models/right_menu_item_model.dart';
import 'right_menu_item.dart';

class RightMenuItemsList extends StatelessWidget {
  final List<RightMenuItemModel> itemList;
  final double itemHeight;

  RightMenuItemsList({
    this.itemList,
    this.itemHeight = 50.0, 
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        var itemModel = itemList[index];
        return RightMenuItem(
          itemModel: itemModel,
          height: itemHeight,
        );
      },
    );
  }
}
