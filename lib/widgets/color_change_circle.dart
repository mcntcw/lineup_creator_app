import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';

class ColorChangeCircle extends StatelessWidget {
  final Color color;
  const ColorChangeCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return GestureDetector(
      onTap: () {
        fieldController.changeIconColor(color);
      },
      child: Obx(
        () => Container(
          margin: const EdgeInsets.only(right: 3),
          height: 28,
          width: 28,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white70,
              width: 3.0,
            ),
          ),
          child: fieldController.themeColor.value == color
              ? const Icon(
                  Icons.done,
                  size: 12,
                  color: Colors.white70,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
