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
      body: Column(
        children: [
          SizedBox(
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
          Text('categories',
              style: TextStyle(
                fontSize: 25,
              )),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: c.names.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.network(
                      c.names[index],
                      width: 500,
                    ),
                    Text('this'),
                  ],
                ),
              );
            },
          )),
          Expanded(
              child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: c.names.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(),
                  child: Container(
                      child: Column(
                    children: [
                      Image.network(
                        c.names[index],
                        fit: BoxFit.cover,
                      ),
                      Text('this is ')
                    ],
                  )));
            },
          ))
        ],
      ),
    );
  }
}
