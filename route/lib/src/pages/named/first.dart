import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.toNamed("/second");
                // Get.offNamed("/second"); // 현재 페이지를 지우고 이동
              },
            )
          ],
        ),
      ),
    );
  }
}
