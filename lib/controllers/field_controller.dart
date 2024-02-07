import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/models/spot_model.dart';
import 'package:lineup_creator_app/utils/colors.dart';

class FieldController extends GetxController {
  var selectedFormation = '4-3-3'.obs;
  final List<Spot> spots = Spot.spots;
  var themeColor = secondaryColor.obs;
  var substituteStatus = true.obs;
  var dataContainerVisibility = false.obs;

  var playerNameController = TextEditingController().obs;

  void setStartFormation() {
    selectedFormation.value = '4-3-3';
  }

  void setSelectedFormation(String formation, BuildContext context) {
    selectedFormation.value = formation;

    switch (formation) {
      case '4-4-2':
        //BR
        spots[0].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[0].y.value = MediaQuery.of(context).size.height * 0.0662;
        spots[0].position.value = 'GK';
        //LO
        spots[1].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[1].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[1].position.value = 'LB';
        //ŚO
        spots[2].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[2].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[2].position.value = 'CB';
        //ŚO
        spots[3].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[3].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[3].position.value = 'CB';
        //PO
        spots[4].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[4].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[4].position.value = 'RB';
        //LP
        spots[5].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[5].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[5].position.value = 'LM';
        //ŚP
        spots[6].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[6].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[6].position.value = 'CM';
        //ŚP
        spots[7].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[7].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[7].position.value = 'CM';
        //PP
        spots[8].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[8].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[8].position.value = 'RM';
        //N
        spots[9].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[9].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[9].position.value = 'ST';
        //N
        spots[10].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[10].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[10].position.value = 'ST';
      case '4-2-3-1':
        //BR
        spots[0].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[0].y.value = MediaQuery.of(context).size.height * 0.0662;
        spots[0].position.value = 'GK';
        //LO
        spots[1].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[1].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[1].position.value = 'LB';
        //ŚO
        spots[2].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[2].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[2].position.value = 'CB';
        //ŚO
        spots[3].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[3].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[3].position.value = 'CB';
        //PO
        spots[4].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[4].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[4].position.value = 'RB';
        //ŚPD
        spots[5].x.value = MediaQuery.of(context).size.width * 0.2673;
        spots[5].y.value = MediaQuery.of(context).size.height * 0.3631;
        spots[5].position.value = 'CDM';
        //ŚPD
        spots[6].x.value = MediaQuery.of(context).size.width * 0.6562;
        spots[6].y.value = MediaQuery.of(context).size.height * 0.3631;
        spots[6].position.value = 'CDM';
        //LP
        spots[7].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[7].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[7].position.value = 'LM';
        //ŚPO
        spots[8].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[8].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[8].position.value = 'CAM';
        //PP
        spots[9].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[9].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[9].position.value = 'RM';
        //N
        spots[10].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[10].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[10].position.value = 'ST';
      case '3-4-3':
        //BR
        spots[0].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[0].y.value = MediaQuery.of(context).size.height * 0.0662;
        spots[0].position.value = 'GK';
        //ŚO
        spots[1].x.value = MediaQuery.of(context).size.width * 0.2309;
        spots[1].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[1].position.value = 'CB';
        //ŚO
        spots[2].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[2].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[2].position.value = 'CB';
        //ŚO
        spots[3].x.value = MediaQuery.of(context).size.width * 0.6927;
        spots[3].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[3].position.value = 'CB';
        //LP
        spots[4].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[4].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[4].position.value = 'LM';
        //ŚP
        spots[5].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[5].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[5].position.value = 'CM';
        //ŚP
        spots[6].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[6].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[6].position.value = 'CM';
        //PP
        spots[7].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[7].y.value = MediaQuery.of(context).size.height * 0.4034;
        spots[7].position.value = 'RM';
        //LS
        spots[8].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[8].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[8].position.value = 'LW';
        //N
        spots[9].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[9].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[9].position.value = 'ST';
        //PS
        spots[10].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[10].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[10].position.value = 'RW';
      case '3-5-2':
        //BR
        spots[0].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[0].y.value = MediaQuery.of(context).size.height * 0.0662;
        spots[0].position.value = 'GK';
        //ŚO
        spots[1].x.value = MediaQuery.of(context).size.width * 0.2309;
        spots[1].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[1].position.value = 'CB';
        //ŚO
        spots[2].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[2].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[2].position.value = 'CB';
        //ŚO
        spots[3].x.value = MediaQuery.of(context).size.width * 0.6927;
        spots[3].y.value = MediaQuery.of(context).size.height * 0.1959;
        spots[3].position.value = 'CB';
        //ŚPD
        spots[4].x.value = MediaQuery.of(context).size.width * 0.2673;
        spots[4].y.value = MediaQuery.of(context).size.height * 0.3631;
        spots[4].position.value = 'CDM';
        //ŚPD
        spots[5].x.value = MediaQuery.of(context).size.width * 0.6562;
        spots[5].y.value = MediaQuery.of(context).size.height * 0.3631;
        spots[5].position.value = 'CDM';
        //LP
        spots[6].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[6].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[6].position.value = 'LM';
        //ŚPO
        spots[7].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[7].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[7].position.value = 'CAM';
        //PP
        spots[8].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[8].y.value = MediaQuery.of(context).size.height * 0.5072;
        spots[8].position.value = 'RM';
        //N
        spots[9].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[9].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[9].position.value = 'ST';
        //N
        spots[10].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[10].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[10].position.value = 'ST';
      default:
        //BR
        spots[0].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[0].y.value = MediaQuery.of(context).size.height * 0.0662;
        spots[0].position.value = 'GK';
        //LO
        spots[1].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[1].y.value = MediaQuery.of(context).size.height * 0.1959;
        {}
        spots[1].position.value = 'LB';
        //ŚO
        spots[2].x.value = MediaQuery.of(context).size.width * 0.3585;
        spots[2].y.value = MediaQuery.of(context).size.height * 0.1959;
        {}
        spots[2].position.value = 'CB';
        //ŚO
        spots[3].x.value = MediaQuery.of(context).size.width * 0.5529;
        spots[3].y.value = MediaQuery.of(context).size.height * 0.1959;
        {}
        spots[3].position.value = 'CB';
        //PO
        spots[4].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[4].y.value = MediaQuery.of(context).size.height * 0.1959;
        {}
        spots[4].position.value = 'RB';
        //ŚP
        spots[5].x.value = MediaQuery.of(context).size.width * 0.2309;
        spots[5].y.value = MediaQuery.of(context).size.height * 0.4034;
        {}
        spots[5].position.value = 'CM';
        //ŚP
        spots[6].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[6].y.value = MediaQuery.of(context).size.height * 0.4034;
        {}
        spots[6].position.value = 'CM';
        //ŚP
        spots[7].x.value = MediaQuery.of(context).size.width * 0.6927;
        spots[7].y.value = MediaQuery.of(context).size.height * 0.4034;
        {}
        spots[7].position.value = 'CM';
        //LS
        spots[8].x.value = MediaQuery.of(context).size.width * 0.1640;
        spots[8].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[8].position.value = 'LW';
        //N
        spots[9].x.value = MediaQuery.of(context).size.width * 0.4618;
        spots[9].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[9].position.value = 'ST';
        //PS
        spots[10].x.value = MediaQuery.of(context).size.width * 0.7473;
        spots[10].y.value = MediaQuery.of(context).size.height * 0.6432;
        spots[10].position.value = 'RW';
    }
  }

  void openDataEnterer(int index) {
    for (int i = 0; i < spots.length; i++) {
      spots[i].isContainerVisible.value = false;
    }
    spots[index].isContainerVisible.value = true;
  }

  void closeDataEnterer(int index) {
    spots[index].isContainerVisible.value = false;
  }

  void addPlayerToPosition(int index) {
    if (playerNameController.value.text != '') {
      spots[index].players.add(playerNameController.value.text);
      playerNameController.value.clear();
    }
  }

  void deletePlayerFromPosition(int index, int idx) {
    spots[index].players.removeAt(idx);
  }

  final List<Color> colors = [
    secondaryColor,
    Colors.red,
    Colors.blue,
    Colors.yellow.shade600,
    Colors.green.shade400,
    Colors.pink,
    Colors.purple,
    Colors.orange.shade300,
  ];

  void changeIconColor(Color color) {
    themeColor.value = color;
  }

  void hideSubstitute() {
    substituteStatus.value = !substituteStatus.value;
  }
}
