import 'package:flutter/material.dart';

void customBottomSheet(BuildContext context, widget) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            color: Color.fromRGBO(0, 0, 0, 0.001),
            child: GestureDetector(
              onTap: () {},
              child: widget,
              // child: DraggableScrollableSheet(
              //     initialChildSize: .9,
              //     minChildSize: 0.9,
              //     // maxChildSize: 1,
              //     builder: (_, controller) {
              //       return widget;
              //     }),
            ),
          ),
        );
      });
}
