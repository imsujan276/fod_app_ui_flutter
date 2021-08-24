import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/one_controller.dart';

class OneView extends GetView<OneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OneView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OneView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
