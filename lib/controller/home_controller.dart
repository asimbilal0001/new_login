import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/models/product.dart';

import '../models/user.dart';

class HomeController extends GetxController {
  List<productItems> myStore = [
    productItems(
      'Air1',
      '100\$',
      'https://images.unsplash.com/photo-1563434649554-58f91d22ec2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=879&q=80',
      ourDescription:
          'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.',
    ),
    productItems('Air2', '90\$',
        'https://www.adidas.ae/on/demandware.static/-/Sites-adidas-navigation-uae/en_AE/dw04993ecf/Running%20Men\'s%20Shoes%20PLP%20Banner%20DT.jpg',
        ourDescription:
            'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.'),
    productItems(
      'Air3',
      '110\$',
      'https://images.unsplash.com/photo-1552346154-21d32810aba3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjF8fHNob2VzfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    productItems(
      'Air4',
      '130\$',
      'https://images.unsplash.com/photo-1558004282-e2b2587e3e47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzd8fHNob2VzfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    productItems(
      'Air5',
      '150\$',
      'https://images.unsplash.com/photo-1489647767089-3944a3baa54e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=876&q=80',
      ourDescription:
          'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.',
    ),
    productItems(
      'Air6',
      '200\$',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIOfmPW7-0QRis62vekvGRRSL-UM__HSOVfQ&usqp=CAU',
      ourDescription:
          'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.',
    ),
    productItems(
      'Air7',
      '400\$',
      'https://staticg.sportskeeda.com/editor/2022/11/29992-16689382183670-1920.jpg',
      ourDescription:
          'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.',
    ),
    productItems(
      'Air8',
      '600\$',
      'https://images.unsplash.com/photo-1542834759-d9f324e7764b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTUzfHxzaG9lc3xlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      ourDescription:
          'The "StrideMax Pro" is the ultimate running shoe designed to elevate your performance to new heights. Engineered with cutting-edge technology and premium materials, this shoe offers unrivaled comfort, support, and speed for runners of all levels. Its lightweight and breathable mesh upper ensure excellent ventilation, keeping your feet cool and dry during intense workouts. The shoe\'s responsive midsole with advanced cushioning technology absorbs impact and provides a powerful energy return, propelling you forward with every stride. The durable rubber outsole offers exceptional traction on various terrains, ensuring a secure grip for confident running. With a sleek and stylish design, the "StrideMax Pro" is not only a high-performance running shoe but also a fashion statement for athletes who demand both functionality and aesthetics. Maximize your running potential with the "StrideMax Pro" and experience the thrill of reaching new milestones in your fitness journey.',
    ),
  ];
}
