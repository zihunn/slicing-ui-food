import 'package:flutter/material.dart';
import 'package:food_ui/state_util.dart';
import '../view/Home_view.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  var index2 = 0;

  setBottomBarIndex(index) {
    update();
    setState(() {
      currentIndex = index;
    });
  }

  categoryChange(index) {
    setState(() {
      index2 = index;
    });
  }

  List<Map> ListFood = [
    {
      'id': 1,
      'name': 'Egg Pasta',
      'category': 'Spicy chicken pasta',
      'calories': 78,
      'price': 9.80,
      'rating': 2.6,
      'time': "20-30 min",
      'detail':
          'Egg Pasta Recipe is the delicious evening snack during the winters and monsoon',
      'image': "assets/eggpasta.png",
      'ingredient': [
        'assets/meat.png',
        'assets/broccoli.png',
        'assets/onion.png',
        'assets/cabbage.png',
      ]
    },
    {
      'id': 2,
      'name': 'Chicken Dimsum',
      'category': 'Spicy chicken Dimsum',
      'calories': 65,
      'price': 6.99,
      'rating': 3.2,
      'time': "20-30 min",
      'detail':
          'Chicken Dimsum Recipe is the delicious evening snack during the winters and monsoon',
      'image': "assets/dumpling.png",
      'ingredient': [
        'assets/meat.png',
        'assets/broccoli.png',
        'assets/onion.png',
        'assets/cabbage.png',
      ]
    },
    {
      'id': 3,
      'name': 'Oni Sandwich',
      'category': 'Spicy chicken Sandwich',
      'calories': 69,
      'price': 6.72,
      'rating': 2.9,
      'time': "20-30 min",
      'detail':
          'Chicken Dimsum Recipe is the delicious evening snack during the winters and monsoon',
      'image': "assets/sandwich.png",
      'ingredient': [
        'assets/meat.png',
        'assets/broccoli.png',
        'assets/onion.png',
        'assets/cabbage.png',
      ]
    },
  ];
}


