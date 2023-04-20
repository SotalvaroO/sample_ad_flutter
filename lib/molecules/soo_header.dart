import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../atoms/soo_text.dart';
import '../foundation/color_fundation.dart';

class OwnAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  final Icon iconAppBarr;

  OwnAppBar({
    this.title = 'Arquitectura limpia',
    this.iconAppBarr = const Icon(Icons.add)
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: footer_background,
      title: H1(text: title, key: Key('head-wc'),),
      actions: [
        IconButton(
          icon: this.iconAppBarr,
          onPressed: () => {print("Oprimiste +")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("Oprimiste >")},
        )
      ],
    );
}

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}