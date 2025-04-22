import 'package:emart_seller/const/const.dart';

class ColorController extends GetxController {
  var selectedColors = <String>[].obs;

  void toggleColor(String color) {
    if (selectedColors.contains(color)) {
      selectedColors.remove(color);
    } else {
      selectedColors.add(color);
    }
    print("Selected: $selectedColors");
  }
}
