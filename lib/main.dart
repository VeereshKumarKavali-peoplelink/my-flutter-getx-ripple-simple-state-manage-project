import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_simple_state_manage_project/my_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //if init property is not used in GetBuilder<Type of Controller> then,
  //create the instance of controller as follows
  //MyController myController = Get.put(MyController());

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple State Manageemnt',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text("Simple State Management")),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
          GetBuilder<MyController>(init: MyController(), builder: (controller){
            return Text("The Value is ${controller.count}", style: const TextStyle(fontSize: 25));
            
            //if instance is created at top 
            //return Text("The Value is ${myController.count}", style: const TextStyle(fontSize: 25));

          }),

          const SizedBox(height: 16),
          ElevatedButton(onPressed: (){
            //if instance is created at top 
            //myController.increment();

            //if instance is not created at top and created in GetBuilder, it will be available only in builder, to make it available we using below code
            Get.find<MyController>().increment();
          }, child: const Text("increment"))
        ],))


      )
    );
  }
}
