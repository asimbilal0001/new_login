import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_login/controller/home_controller.dart';

import '../../controller/user_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final c = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Home Screen !'),
        backgroundColor: Colors.blue.shade300,
      ),
      body: SizedBox(
        height: 200,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              autoPlayInterval: Duration(seconds: 3),
              height: 200.0,
            ),
            items: c.names.map((i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Image.network('$i'),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
