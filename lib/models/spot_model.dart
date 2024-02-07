import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/utils/colors.dart';

class Spot {
  final RxInt id;
  late RxDouble x;
  late RxDouble y;
  final RxList<String> players;
  Rx<Color> color;
  final Rx<String> position;
  Rx<bool> isContainerVisible;
  Spot({
    required this.id,
    required this.x,
    required this.y,
    required this.players,
    required this.color,
    required this.position,
    required this.isContainerVisible,
  });

  static final List<Spot> spots = [
    //BR
    Spot(
      id: 0.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'GK'.obs,
      isContainerVisible: false.obs,
    ),
    // LO
    Spot(
      id: 1.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'LB'.obs,
      isContainerVisible: false.obs,
    ),
    // ŚO
    Spot(
      id: 2.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'CB'.obs,
      isContainerVisible: false.obs,
    ),
    // ŚO
    Spot(
      id: 3.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'CB'.obs,
      isContainerVisible: false.obs,
    ),
    // PO
    Spot(
      id: 4.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'RB'.obs,
      isContainerVisible: false.obs,
    ),
    //ŚP
    Spot(
      id: 5.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'CM'.obs,
      isContainerVisible: false.obs,
    ),
    //ŚP
    Spot(
      id: 6.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'CM'.obs,
      isContainerVisible: false.obs,
    ),
    //ŚP
    Spot(
      id: 7.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'CM'.obs,
      isContainerVisible: false.obs,
    ),
    //LS
    Spot(
      id: 8.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'LW'.obs,
      isContainerVisible: false.obs,
    ),
    //N
    Spot(
      id: 9.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'ST'.obs,
      isContainerVisible: false.obs,
    ),
    //PS
    Spot(
      id: 10.obs,
      x: 0.0.obs,
      y: 0.0.obs,
      color: secondaryColor.obs,
      players: <String>[].obs,
      position: 'RW'.obs,
      isContainerVisible: false.obs,
    ),
  ];
}
