import 'package:get/get.dart';

class NameController extends GetxController {
  RxString name = ''.obs;

  void setName(String newName) {
    name.value = newName;
  }
}