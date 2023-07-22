import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_login/controller/home_controller.dart';
import 'package:new_login/models/product.dart';
import 'package:new_login/views/description.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.5,
                autoPlayInterval: Duration(seconds: 3),
                height: 150.0,
              ),
              items: c.myStore.map((i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      '${i.urlImage}',
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const Text('Categories',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              )),
          Expanded(
            child: ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: c.myStore.length,
              itemBuilder: (context, i) {
                productItems myObject = c.myStore[i];
                return InkWell(
                  child: Card(
                    surfaceTintColor: Colors.transparent,
                    margin: EdgeInsets.all(8),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(8)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                              height: 90,
                              width: 100,
                              child: Image.network(
                                '${myObject.urlImage}',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text('${myObject.name}'),
                        Text('${myObject.price}'),
                      ],
                    ),
                  ),
                  onTap: () => Get.to(() => TheDescriptionPage(c.myStore[i])),
                );
              },
            ),
          ),
          const Text('New Arrival',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              )),
          Expanded(
            child: SizedBox(
              height: 130,
              child: GridView.builder(
                controller: ScrollController(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: c.myStore.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () => Get.to(() => TheDescriptionPage(c.myStore[i])),
                    child: Card(
                        surfaceTintColor: Colors.transparent,
                        child: Container(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                    height: 90,
                                    width: 100,
                                    child: Image.network(
                                      '${c.myStore[i].urlImage}',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Text('${c.myStore[i].name}'),
                            Text('${c.myStore[i].price}'),
                          ],
                        ))),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
