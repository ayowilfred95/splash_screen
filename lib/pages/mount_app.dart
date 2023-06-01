import 'package:flutter/material.dart';
import 'package:splash_screen/screens/app_bottom_bar.dart';
import 'package:splash_screen/screens/app_category_list.dart';
import 'package:splash_screen/screens/mount_app.dart';
import '../main.dart';
import '../screens/appbar.dart';
import '../screens/appsearch.dart';

class MountApp extends StatelessWidget {
  const MountApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: mainColor),
        title: const Center(
          child: Icon(
            Icons.terrain,
            color: mainColor,
            size: 40,
          ),
        ),
        actions: const [
          SizedBox(
            width: 40,
            height: 40,
          )
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          AppMountListView(),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
