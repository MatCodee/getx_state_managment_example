

import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  int _counter = 0;
  int get counter  => _counter;

  void increment() {
    _counter++;
    update();
  }
  void decrement() {
    if(_counter > 0) {
      _counter--;
      update();
    }
  }
}