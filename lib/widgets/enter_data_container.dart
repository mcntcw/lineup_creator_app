import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';
import 'package:lineup_creator_app/models/spot_model.dart';
import 'package:lineup_creator_app/widgets/player_name_text_field.dart';

class EnterDataContainer extends StatelessWidget {
  final int index;
  final Spot spot;
  const EnterDataContainer({super.key, required this.index, required this.spot});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return Obx(
      () => Positioned(
        left: fieldController.spots[index].position.value == "GK"
            ? fieldController.spots[index].x.value + 25
            : fieldController.spots[index].position.value == "RB" ||
                    fieldController.spots[index].position.value == "RW" ||
                    fieldController.spots[index].position.value == "RM"
                ? fieldController.spots[index].x.value - 100
                : fieldController.spots[index].position.value == "CM" ||
                        fieldController.spots[index].position.value == "CDM"
                    ? fieldController.spots[index].x.value - 80
                    : fieldController.spots[index].position.value == "CB"
                        ? fieldController.spots[index].x.value - 80
                        : fieldController.spots[index].x.value - 16,
        bottom: fieldController.spots[index].position.value == "GK"
            ? fieldController.spots[index].y.value - 30
            : fieldController.spots[index].position.value == "RW" ||
                    fieldController.spots[index].position.value == "LW" ||
                    fieldController.spots[index].position.value == "ST"
                ? fieldController.spots[index].y.value - 120
                : fieldController.spots[index].y.value - 60,
        child: Visibility(
          visible: fieldController.spots[index].isContainerVisible.value,
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: fieldController.themeColor.value,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(
                width: 3.0,
                color: Colors.white70,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      fieldController.spots[index].position.value,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                    if (fieldController.spots[index].players.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        //margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                fieldController.spots[index].players[0],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                fieldController.deletePlayerFromPosition(index, 0);
                                fieldController.closeDataEnterer(index);
                              },
                              icon: const Icon(
                                Icons.delete_outline_rounded,
                                color: Colors.white70,
                                size: 18,
                              ),
                            )
                          ],
                        ),
                      )
                    else
                      const SizedBox(),
                    if (fieldController.spots[index].players.length > 1)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                fieldController.spots[index].players[1],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                fieldController.deletePlayerFromPosition(index, 1);
                                fieldController.closeDataEnterer(index);
                              },
                              icon: const Icon(
                                Icons.delete_outline_rounded,
                                color: Colors.white70,
                                size: 18,
                              ),
                            )
                          ],
                        ),
                      )
                    else
                      const SizedBox(),
                    const SizedBox(height: 10),
                    fieldController.spots[index].players.length < 2
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 175,
                                height: 30,
                                child: PlayerNameTextField(
                                  color: fieldController.themeColor.value,
                                  hint: 'add new player',
                                  controller: fieldController.playerNameController.value,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      fieldController.closeDataEnterer(index);
                                    },
                                    child: const Text(
                                      'cancel',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      fieldController.addPlayerToPosition(index);
                                      fieldController.closeDataEnterer(index);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      child: Text(
                                        'save',
                                        style: TextStyle(
                                          color: fieldController.themeColor.value,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        : const SizedBox(),
                  ],
                ),
                Positioned(
                  top: -10,
                  right: -15,
                  child: IconButton(
                    onPressed: () {
                      fieldController.closeDataEnterer(index);
                    },
                    icon: const Icon(
                      Icons.cancel,
                      size: 18,
                    ),
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
