import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_state_managment_example/controllers/counterController.dart';
import 'package:getx_state_managment_example/pages/page2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GetBuilder<CounterController>(
          builder: (counterController) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Center(
                        child: Text(
                          counterController.counter.toString(),
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 30),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Click!");
                      counterController.increment();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Incrementar",
                          style: TextStyle(color: Colors.black54, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Click!");
                      counterController.decrement();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Decrement",
                          style: TextStyle(color: Colors.black54, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SecondPage());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Segunda page",
                          style: TextStyle(color: Colors.black54, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
