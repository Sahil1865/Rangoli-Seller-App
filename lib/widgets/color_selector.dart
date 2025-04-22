import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../views/products_screen/components/color_controller.dart';

class ProductColorSelector extends StatelessWidget {
  final List<String> productColors = [
    "Black", "White", "Brown", "Blue", "Red", "Green", "Yellow", "Golden", "Silver"
  ];

  final ColorController controller = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(productColors.length, (index) {
        final color = productColors[index];
        final isSelected = controller.selectedColors.contains(color);

        return VxBox(
          child: color.text
              .color(Colors.white)
              .bold
              .make(),
        )
            .padding(const EdgeInsets.all(8))
            .roundedSM
            .border(color: isSelected ? Colors.blue : Colors.grey, width: 1.5)
            .color(isSelected ? Colors.blue : Colors.grey.withOpacity(0.3))
            .make()
            .onTap(() => controller.toggleColor(color));
      }),
    ));
  }
}
