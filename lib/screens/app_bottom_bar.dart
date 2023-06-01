import 'package:flutter/material.dart';
import 'package:splash_screen/classes/app_mount_list_view.dart';
import 'package:splash_screen/lists/mount_model.dart';

import '../main.dart';

// app bottom bar
class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  AppBottomBarState createState() => AppBottomBarState();
}

// app bottom bar state
class AppBottomBarState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          barItems.length,
          (index) {
            AppBottomBarItem currentBarItem = barItems[index];

            // we'll build a widget here
            Widget barItemWidget;

            // for each of the items in barItems
            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                  padding: const EdgeInsets.only(
                      left: 15, top: 5, bottom: 5, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                  child: Row(children: [
                    Icon(currentBarItem.icon, color: Colors.white),
                    const SizedBox(width: 5),
                    Text(currentBarItem.label,
                        style: const TextStyle(color: Colors.white))
                  ]));
            } else {
              barItemWidget = IconButton(
                icon: Icon(currentBarItem.icon, color: Colors.grey),
                onPressed: () {
                  setState(
                    () {
                      for (var item in barItems) {
                        item.isSelected = item == currentBarItem;
                      }
                    },
                  );
                },
              );
            }
            return barItemWidget;
          },
        ),
      ),
    );
  }
}
