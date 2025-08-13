import 'package:get/get.dart';
import 'package:latihan1/playersmodel.dart';

class Footballplayercontroller extends GetxController {
  var players = <PlayerModel>[
    PlayerModel(nama: "Messi", posisi: "Depan", nomorPunggung: 10, foto: "assets/mezzi.jpg"),
    PlayerModel(nama: "Ronaldo", posisi: "Depan", nomorPunggung: 7, foto: "assets/ronald.jpg"),
    PlayerModel(nama: "Neymar", posisi: "Belakang", nomorPunggung: 11, foto: "assets/neymar.jpg"),
  ].obs;
}
