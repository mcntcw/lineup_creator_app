import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';
import 'package:lineup_creator_app/utils/colors.dart';

class FormationPickerTile extends StatelessWidget {
  final String formation;
  const FormationPickerTile({super.key, required this.formation});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return GestureDetector(
      onTap: () {
        fieldController.setSelectedFormation(formation, context);
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: fieldController.themeColor.value,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Center(
            child: Text(
              formation,
              style: TextStyle(
                fontSize: 16,
                color: backgroundColor,
                fontWeight: fieldController.selectedFormation.value == formation ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
