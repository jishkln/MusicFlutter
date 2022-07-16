import 'package:flutter/material.dart';
import 'package:musicrythum/screens/sub_screens/albun_screen.dart';
import 'package:musicrythum/screens/sub_screens/artist_screen.dart';
import 'package:musicrythum/screens/sub_screens/newplaylist_screen.dart';
import 'package:musicrythum/screens/sub_screens/resentlyplayli_stscreen.dart';

class WidgetApps {
  List rootName = [
    const Resently(),
    const PlayList1(),
    const AlbumScreen(),
    const ArtistScreen(),
  ];

  List<String> imgName = [
    'asset/images/bigbrother.jpeg',
    'asset/images/Could case.jpeg',
    'asset/images/hannybee.jpeg',
    'asset/images/kuruthi.jpeg',
  ];
  List<String> imgHomeGrid = [
    'asset/images/1.png',
    'asset/images/2.png',
    'asset/images/4.png',
    'asset/images/3.png',
  ];
  List<String> gifSubScreen = [
    'asset/images/Resently 1.gif',
    'asset/images/NewSongs.gif',
    'asset/images/Artist.gif',
    'asset/images/Album.gif',
  ];
  List<String> imgLib = [
    'asset/images/1.png',
    'asset/images/2.png',
    'asset/images/4.png',
    'asset/images/3.png',
    'asset/images/leady.jpg',
    'asset/images/pecock.jpg',
    'asset/images/cycle.jpg',
  ];

  List<String> fieldName = [
    'Resent Play List',
    'Newly Added Songs',
    'Album',
    'Artist'
  ];
  List<String> libraryField = [
    'Resent Play List',
    'Newly Added Songs',
    'Album',
    'Artist',
    'PlayList 1',
    'PlayList 2',
    'PlayList 2'
  ];
  List<String> settingField = [
    'Your Play Lists',
    'Sleep Timer',
    'Settings',
    'About Us',
  ];
  List<IconData> settingFieldIcons = [
    Icons.list,
    (Icons.timer),
    (Icons.settings),
    (Icons.info_outline),
  ];
  List<String> searchTerms = [
    "Velmuruka",
    "Banjaraa",
  ];

  static Color appBarColor = Colors.black;
  static Color bckColor = Colors.black;
}
