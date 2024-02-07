import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/controllers/field_controller.dart';
import 'package:lineup_creator_app/utils/colors.dart';
import 'package:lineup_creator_app/widgets/enter_data_container.dart';
import 'package:lineup_creator_app/widgets/player_icon.dart';
import 'package:lineup_creator_app/widgets/position_list.dart';
import 'package:lineup_creator_app/widgets/settings_drawer.dart';
import 'package:lineup_creator_app/widgets/soccer_field.dart';

// ignore: must_be_immutable
class LineupScreen extends StatelessWidget {
  bool appStarted = false;
  LineupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FieldController fieldController = Get.put(FieldController());
    fieldController.setSelectedFormation(fieldController.selectedFormation.value, context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        backgroundColor: const Color(0xFF262626),
        iconTheme: const IconThemeData(color: secondaryColor),
        titleSpacing: 25,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          height: 65,
          fit: BoxFit.cover,
          color: secondaryColor,
        ),
      ),
      endDrawer: const SettingsDrawer(),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => SoccerField(
                    fieldLineColor: fieldController.themeColor.value,
                  ),
                ),
                const PlayerIcon(index: 0),
                const PositionList(index: 0),
                const PlayerIcon(index: 1),
                const PositionList(index: 1),
                const PlayerIcon(index: 2),
                const PositionList(index: 2),
                const PlayerIcon(index: 3),
                const PositionList(index: 3),
                const PlayerIcon(index: 4),
                const PositionList(index: 4),
                const PlayerIcon(index: 5),
                const PositionList(index: 5),
                const PlayerIcon(index: 6),
                const PositionList(index: 6),
                const PlayerIcon(index: 7),
                const PositionList(index: 7),
                const PlayerIcon(index: 8),
                const PositionList(index: 8),
                const PlayerIcon(index: 9),
                const PositionList(index: 9),
                const PlayerIcon(index: 10),
                const PositionList(index: 10),
                EnterDataContainer(index: 0, spot: fieldController.spots[0]),
                EnterDataContainer(index: 1, spot: fieldController.spots[1]),
                EnterDataContainer(index: 2, spot: fieldController.spots[2]),
                EnterDataContainer(index: 3, spot: fieldController.spots[3]),
                EnterDataContainer(index: 4, spot: fieldController.spots[4]),
                EnterDataContainer(index: 5, spot: fieldController.spots[5]),
                EnterDataContainer(index: 6, spot: fieldController.spots[6]),
                EnterDataContainer(index: 7, spot: fieldController.spots[7]),
                EnterDataContainer(index: 8, spot: fieldController.spots[8]),
                EnterDataContainer(index: 9, spot: fieldController.spots[9]),
                EnterDataContainer(index: 10, spot: fieldController.spots[10]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
