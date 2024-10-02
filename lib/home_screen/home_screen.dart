import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ge/home_screen/counterController.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
 final dependency = Get.put(Countercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetBuilder<Countercontroller>(
          builder: (Controller){
          return Text(Controller.count.toString(),style: TextStyle(fontSize: 40),);
       }),
      ),
  floatingActionButton: FloatingActionButton(
      onPressed: dependency.increament,
      child: Icon(Icons.add),
      ),
    );
  }
}
