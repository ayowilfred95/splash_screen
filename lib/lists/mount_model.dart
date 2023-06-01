import 'package:flutter/material.dart';
import '../classes/app_mount_list_view.dart';

// Mount Model Array

final List<MountModel> mountItems = [
  MountModel(
      path:
          'https://sa.kapamilya.com/absnews/abscbnnews/media/2021/afp/01/17/20210116-mt-semeru-indonesia-ash-afp-s.jpg',
      name: 'Mount Semeru',
      description:
          'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
      location: 'East Java'),
  MountModel(
      path:
          'https://media-cdn.tripadvisor.com/media/photo-s/04/a5/6f/ce/dsc-5622jpg.jpg',
      name: 'Mount Merbaru',
      description:
          'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
      location: 'Central Java'),
  MountModel(
      path:
          'https://images.pexels.com/photos/13971569/pexels-photo-13971569.jpeg?auto=compress&cs=tinysrgb&w=400',
      name: 'Mauna Loa',
      description:
          'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
      location: 'Hawaii'),
  MountModel(
      path:
          'https://cdn.images.express.co.uk/img/dynamic/78/590x/mount-vesuvius-1100807.jpg',
      name: 'Mount Vesuvius',
      description:
          'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
      location: 'Italy'),
  MountModel(
      path:
          'https://upload.wikimedia.org/wikipedia/commons/0/04/PopoAmeca2zoom.jpg',
      name: 'Mount Popocatépetl',
      description:
          'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
      location: 'Mexico'),
  MountModel(
      path:
          'https://images.pexels.com/photos/3880594/pexels-photo-3880594.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      name: 'Mount Everest',
      description:
          'Mount Everest is the highest peak in the world ,standing at an elevation of 8,848 meters . it is renowed for its challenging climbing routes and is a popular destination for moutainers',
      location: 'Hilmalayas'),
  MountModel(
      path:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMDGfL0I6KzkqWWBFSJ2pC1Ph4CFfjlv350A&usqp=CAU',
      name: 'Mount Fuji',
      description:
          'Mount Fuji is an iconic and active stratovolcano. it stands at an elevation of 3,776 meters and is renowed for its symmetrical cone shape.',
      location: 'Japan')
];

// Category array

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk)
];

// populate the list of AppBottomBarItems

List<AppBottomBarItem> barItems = [
  AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
  AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
  AppBottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
  AppBottomBarItem(
      icon: Icons.person_outline, label: 'Profile', isSelected: false)
];
