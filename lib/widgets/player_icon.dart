import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';

class PlayerIcon extends StatelessWidget {
  final int index;
  const PlayerIcon({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return Obx(
      () => Positioned(
        left: fieldController.spots[index].x.value,
        bottom: fieldController.spots[index].y.value,
        child: GestureDetector(
          onTap: () {
            fieldController.openDataEnterer(index);
          },
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                  color: fieldController.themeColor.value,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white70,
                    width: 3.0,
                  ),
                ),
                child: Visibility(
                  visible: (fieldController.substituteStatus.value == true &&
                          fieldController.spots[index].players.length < 2) ||
                      (fieldController.substituteStatus.value == false && fieldController.spots[index].players.isEmpty),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white70,
                    size: 16,
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
