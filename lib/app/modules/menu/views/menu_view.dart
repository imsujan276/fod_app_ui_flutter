import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'MenuView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
