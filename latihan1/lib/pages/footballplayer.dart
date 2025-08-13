import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Controllers/footballplayercontroller.dart';
import 'package:latihan1/routes/routes.dart';

class Footballplayer extends StatelessWidget {
  Footballplayer({super.key});

  final Footballplayercontroller footballplayercont = Get.put(
    Footballplayercontroller(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Player")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballplayercont.players.length,
            itemBuilder: (context, index) {
              final players = footballplayercont.players[index];
              return ListTile(
                leading: Image.asset(
                  players.foto,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Get.toNamed(
                    AppRoutes.editpage,
                    arguments: {'index': index, 'player': players},
                  );
                },

                title: Text("${players.nama} (${players.posisi})"),
                subtitle: Text("No: ${players.nomorPunggung}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
