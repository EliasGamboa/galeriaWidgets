import 'package:flutter/material.dart';
import 'package:widgetgallery/models/item_menu.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/buttom_menu.dart';

class BottomMenu extends StatelessWidget {
  final List<MenuOption> items;
  const BottomMenu({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ButtomMenu> _getOptions(List<MenuOption> items) => appRoute.listScreens
        .map((option) => ButtomMenu(option: option))
        .toList();
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: _getOptions(items),
            )));
  }
}
