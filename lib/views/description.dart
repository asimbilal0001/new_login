import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_login/models/product.dart';

import '../controller/home_controller.dart';

class TheDescriptionPage extends StatelessWidget {
  final productItems store;
  TheDescriptionPage(this.store);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  store.urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      store.name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(store.ourDescription.toString())
                ],
              ))
        ],
      ),
    );
  }
}
