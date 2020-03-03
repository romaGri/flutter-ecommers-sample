import 'package:ecommers/ui/widgets/right_menu_bar/index.dart';
import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ecommers/generated/i18n.dart';
import 'package:ecommers/ui/decorations/index.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';
import 'package:ecommers/ui/widgets/button/index.dart';


class RightMenuWidget extends StatelessWidget{
 final List<RightMenuItemModel> filterMenuList = [
    SubTitleModel(
      title: 'View',
      subTitle: 'Thumbnails'),

    SubTitleModel(
      title: 'Category',
      subTitle: 'Men\'s Apparel'),
       
    SubTitleModel(
      title: 'Condition',
      subTitle: 'Brand New',
    ),

    SubTitleModel(
      title: 'Material',
      subTitle: 'Cotton',
    ),
    
    ColorsModel(
      title: 'Colour',
      colors: ['#77CBFF', '#FF77E5', '#C5DC1B']),
      
    SubTitleModel(
      title: 'Brand',
      subTitle: 'All Brands',
    ),

    SubTitleModel(
      title: 'Size',
      subTitle: 'Large',
    ),

    PriceModel(
      title: 'Price Range',
      minPrice: '0',
      maxPrice: '30')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: 270,
        margin: EdgeInsets.zero,
        child: Drawer(
          child: Container(
            color: BrandingColors.background,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const SizedBox(width: Insets.x5),
                    Text(I18n.of(context).refineResults,
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: FontSizes.small_3x,
                            )),
                    const Spacer(),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        I18n.of(context).clear,
                        style: Theme.of(context)
                           .textTheme
                           .subtitle1
                           .copyWith(fontSize: FontSizes.small_3x,
                           color: BrandingColors.primary
                          ),
                      ),
                    )
                  ],
                ),
                RightMenuItemsList(
                  itemList: filterMenuList,
                  
                ),
                const SizedBox(height: 87.0),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                        height: 47.0,
                        width: 230.0,
                        child: PrimaryButtonWidget(
                            text: I18n.of(context).applyFilters,
                            onPressedFunction: () {}))),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
