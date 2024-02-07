import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';

class SubstituteVisibilityButton extends StatelessWidget {
  const SubstituteVisibilityButton({super.key});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return GestureDetector(
      onTap: () {
        fieldController.hideSubstitute();
      },
      child: Obx(
        () => Container(
            width: 60,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: fieldController.substituteStatus.value == true ? Colors.white : Colors.black,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: fieldController.substituteStatus.value == true ? Colors.black : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
