import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithGetx extends GetxController{
  int count = 0;
  void increse(String id){
    count++;
    update([id]);
  }
}