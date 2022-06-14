import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route/src/pages/normal/first.dart';
import 'package:route/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));
                Get.to(FirstPage());
              },
            ),
            RaisedButton(
              child: Text("named 라우트"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: Text("Arguments 전달"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed(
                  "/next",
                  arguments: "route",
                );
              },
            ),
            RaisedButton(
              child: Text("동적 uri"),
              onPressed: () {
                Get.toNamed("/user/28357?name=sanghun&age=27");
              },
            ),
            RaisedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            )
          ],
        ),
      ),
    );
  }
}
