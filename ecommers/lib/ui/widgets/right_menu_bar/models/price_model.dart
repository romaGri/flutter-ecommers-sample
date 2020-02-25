import 'right_menu_item_model.dart';

class PriceModel extends RightMenuItemModel{
  final String minPrice;
  final String maxPrice;
 
 PriceModel({
   String title,
    this.minPrice, 
    this.maxPrice}):super(title: title);
    
}