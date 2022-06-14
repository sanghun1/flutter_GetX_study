import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Get.find<CountControllerWithGetx>().increse(id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 50)),
          GetBuilder<CountControllerWithGetx>(
            id: "first",
            builder: (controller) {
              return Text("${controller.count}", style: TextStyle(fontSize: 50));
            },
          ),
          GetBuilder<CountControllerWithGetx>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}", style: TextStyle(fontSize: 50));
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
