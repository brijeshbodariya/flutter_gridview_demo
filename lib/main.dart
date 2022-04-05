import 'package:flutter/material.dart';
import 'package:flutter_gridview_demo/constant/constant.dart';
import 'package:flutter_gridview_demo/screen/home_screen.dart';

import 'screen/splash_screen.dart';

void main() => runApp(MaterialApp(
      title: 'GridView Demo',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      routes: <String, WidgetBuilder>{
        splashScreen: (BuildContext context) => const SplashScreen(),
        homeScreen: (BuildContext context) => HomeScreen(),
        //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
      },
    ));
