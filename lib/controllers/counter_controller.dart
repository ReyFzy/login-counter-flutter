import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt _mangga = 0.obs;
  RxInt _papaya = 0.obs;

  int get mangga => _mangga.value;
  int get pepaya => _papaya.value;

  int get total => _mangga.value + _papaya.value;

  void incrementMangga() {
    _mangga++;
  }

  void decrementMangga() {
    if (_mangga > 0) {
      _mangga--;
    }
  }

  void incrementPapaya() {
    _papaya++;
  }

  void decrementPapaya() {
    if (_papaya > 0) {
      _papaya--;
    }
  }
}
