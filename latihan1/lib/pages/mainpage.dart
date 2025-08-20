import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:latihan1/Controllers/bottomnavcontroller.dart';
import 'package:latihan1/calculatorpage.dart';
import 'package:latihan1/pages/footballplayer.dart';
import 'package:latihan1/pages/profilepage.dart';

class Mainpage extends StatelessWidget {
  final Bottomnavcontroller bottomnavcontroller = Get.put(
    Bottomnavcontroller(),
  );

  final List<Widget> pages = [Calpage(), Footballplayer(), Profilepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[bottomnavcontroller.curindex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: bottomnavcontroller.curindex.value,
          onTap: bottomnavcontroller.changepage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate_sharp),
              label: "Kalkulator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts_outlined),
              label: "Pemain SepakBola",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}
