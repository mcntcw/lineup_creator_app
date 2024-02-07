import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';

class PositionList extends StatelessWidget {
  final int index;
  const PositionList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return Obx(
      () => Positioned(
        left: fieldController.spots[index].x.value - 23,
        bottom: fieldController.spots[index].y.value - 55,
        child: Container(
          height: 70,
          width: 80,
          padding: fieldController.spots[index].players.isEmpty
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (fieldController.spots[index].players.isNotEmpty)
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  margin: const EdgeInsets.only(bottom: 3),
                  decoration: BoxDecoration(
                    color: fieldController.themeColor.value,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      fieldController.spots[index].players[0],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              else
                const SizedBox(),
              if (fieldController.spots[index].players.length > 1 && fieldController.substituteStatus.value == true)
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  margin: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                    color: fieldController.themeColor.value,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      fieldController.spots[index].players[1],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
