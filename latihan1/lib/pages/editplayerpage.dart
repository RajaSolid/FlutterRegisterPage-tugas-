import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Controllers/editplayercontroller.dart';
import 'package:latihan1/playersmodel.dart';
import 'package:latihan1/widgets/custombutton.dart';
import 'package:latihan1/widgets/custominput.dart';

class EditPlayer extends StatelessWidget {
  final int index;
  final PlayerModel player;

  EditPlayer({super.key, required this.index, required this.player});

  final Editplayercontroller editController = Get.put(Editplayercontroller());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = player.nama;
    positionController.text = player.posisi;
    numberController.text = player.nomorPunggung.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              player.foto,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),

            Custominput(
              controller: nameController, label: 'Nama',
            ),
            Custominput(
              controller: positionController,
              label: 'Posisi',
            ),
            Custominput(
              controller: numberController,
              label: 'Nomor Punggung',
            ),
            Buttoncustom(
              onPressed: () {
                editController.updatePlayer(
                  index,
                  nameController.text,
                  positionController.text,
                  int.tryParse(numberController.text) ?? player.nomorPunggung,
                );
                Get.back();
              },
              mytext: 'Save Changes',
              mytextcolor: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
