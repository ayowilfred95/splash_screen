import 'package:flutter/material.dart';

// class for mount model

class MountModel {
  String path;
  String name;
  String location;
  String description;

// constructor
  MountModel(
      {this.path = '',
      this.name = '',
      this.location = '',
      this.description = ''});
}

// class for category model

class CategoryModel {
  String category;
  IconData? icon;

  CategoryModel({this.category = '', this.icon});
}

// class for App bottom items
class AppBottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarItem({this.icon, this.label = '', this.isSelected = false});
}
