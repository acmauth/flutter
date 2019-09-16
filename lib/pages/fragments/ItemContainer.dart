import 'package:flutter/material.dart';

import 'BlankPadding.dart';
import 'StyledText.dart';

class ItemContainer extends Container {
  ItemContainer({
    Key key,
    Color color,
    @required String title,
    @required List<Container> items,
  }) : super(
          key: key,
          color: color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              StyledText(
                title.toUpperCase(),
                weight: FontWeight.bold,
                size: 16,
              ),
              BlankPadding(),
              Wrap(children: items),
            ],
          ),
        );
}
