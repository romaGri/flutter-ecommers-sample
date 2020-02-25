
import 'right_menu_item_model.dart';

class ColorsModel extends RightMenuItemModel {
  final List<String> colors;

  ColorsModel({
    String title,
    this.colors
  }): super(title: title);
}
