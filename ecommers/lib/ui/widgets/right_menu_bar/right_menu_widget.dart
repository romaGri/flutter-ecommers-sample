import 'dart:ui';

import 'package:ecommers/ui/widgets/right_menu_bar/index.dart';
import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ecommers/generated/i18n.dart';
import 'package:ecommers/ui/decorations/index.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';
import 'package:ecommers/ui/widgets/button/index.dart';

class RightMenuWidget extends StatelessWidget {
  final List<RightMenuItemModel> filterMenuList = [
    SubTitleModel(
      title: 'View',
      subTitle: 'Thumbnails',
    ),
    SubTitleModel(
      title: 'Category',
      subTitle: 'Men\'s Apparel',
    ),
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
      colors: ['#77CBFF', '#FF77E5', '#C5DC1B'],
    ),
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
      maxPrice: '30',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawerScrimColor: Colors.transparent,
      endDrawer: Container(
        width: 270,
        margin: EdgeInsets.zero,
        child: Drawer(
          elevation: 0.0,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              color: BrandingColors.background,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          I18n.of(context).refineResults,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: FontSizes.small_3x,
                              ),
                        ),
                        const Spacer(),
                        Container(
                          width: 45,
                          child: FlatButton(
                            padding: const EdgeInsets.all(1),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {},
                            child: Text(
                              I18n.of(context).clear,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                      fontSize: FontSizes.small_3x,
                                      color: BrandingColors.primary),
                            ),
                          ),
                        ),
                      ],
                    ),
                    RightMenuItemsList(
                      itemList: filterMenuList,
                    ),
                    const SizedBox(height: 10.0),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 47.0,
                          width: 230.0,
                          child: PrimaryButtonWidget(
                              text: I18n.of(context).applyFilters,
                              onPressedFunction: () {}),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
