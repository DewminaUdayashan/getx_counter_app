import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/Controllers/CountController.dart';
import 'package:getx_counter/Views/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX State Management',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Stats Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                controller.count.value.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            RaisedButton(
              child: Text('Next'),
              onPressed: () => Get.to(SecondScreen()),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
