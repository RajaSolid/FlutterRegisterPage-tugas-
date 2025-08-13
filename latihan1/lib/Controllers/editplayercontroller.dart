import 'package:get/get.dart';
import 'package:latihan1/Controllers/footballplayercontroller.dart';

class Editplayercontroller extends GetxController {
  final Footballplayercontroller playerController = Get.find();

  void updatePlayer(int index, String newName, String newPosition, int newNumber) {
    playerController.players[index].nama = newName;
    playerController.players[index].posisi = newPosition;
    playerController.players[index].nomorPunggung = newNumber;
    playerController.players.refresh();
  }
}
