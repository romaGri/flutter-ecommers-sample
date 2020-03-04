import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';

class PriceModel extends RightMenuItemModel {
  final String minPrice;
  final String maxPrice;

  PriceModel({String title, this.minPrice, this.maxPrice})
      : super(title: title);
}
