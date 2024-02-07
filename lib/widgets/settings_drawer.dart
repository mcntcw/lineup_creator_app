import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';
import 'package:lineup_creator_app/utils/colors.dart';
import 'package:lineup_creator_app/widgets/color_change_circle.dart';
import 'package:lineup_creator_app/widgets/formation_picker_tile.dart';
import 'package:lineup_creator_app/widgets/substitute_visibility_button.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.find();
    return Obx(
      () => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Text(
                      'settings',
                      style: TextStyle(
                        color: fieldController.themeColor.value,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Text(
                      'formation',
                      style: TextStyle(
                        // fontFamily: 'Pilcrow',
                        color: fieldController.themeColor.value,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Column(
                      children: [
                        Row(
                          children: [
                            FormationPickerTile(
                              formation: '4-3-3',
                            ),
                            FormationPickerTile(
                              formation: '4-4-2',
                            ),
                            FormationPickerTile(
                              formation: '4-2-3-1',
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            FormationPickerTile(
                              formation: '3-4-3',
                            ),
                            FormationPickerTile(
                              formation: '3-5-2',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'color',
                      style: TextStyle(
                        //fontFamily: 'Pilcrow',
                        color: fieldController.themeColor.value,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 38,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fieldController.colors.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ColorChangeCircle(color: fieldController.colors[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'hide substitute',
                      style: TextStyle(
                        // fontFamily: 'Pilcrow',
                        color: fieldController.themeColor.value,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const SubstituteVisibilityButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
