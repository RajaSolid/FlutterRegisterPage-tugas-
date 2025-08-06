import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Controllers/calcontroller.dart';
import 'package:latihan1/custominputcal.dart';
import 'package:latihan1/widgets/custombutton.dart';

class Calpage extends StatelessWidget {
  Calpage({super.key});

  final Calcontroller calcontroller = Get.put(Calcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Customtextfield(
              controller: calcontroller.txtangka1,
              label: "Input angka 1",
            ),
            SizedBox(height: 10),
            Customtextfield(
              controller: calcontroller.txtangka2,
              label: "Input angka 2",
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Buttoncustom(
                    mytext: "+",
                    mytextcolor: Colors.purple,
                    onPressed: () => calcontroller.tambah(),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Buttoncustom(
                    mytext: "-",
                    mytextcolor: Colors.green,
                    onPressed: () => calcontroller.kurang(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Buttoncustom(
                    mytext: "*",
                    mytextcolor: Colors.red,
                    onPressed: () => calcontroller.kali(),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Buttoncustom(
                    mytext: "/",
                    mytextcolor: Colors.blue,
                    onPressed: () => calcontroller.bagi(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Obx(() => Center(
              child: Text(
                "Hasil: ${calcontroller.texthasil.value}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            )),
            SizedBox(height: 20),

            Buttoncustom(
              mytext: "Clear",
              mytextcolor: Colors.purpleAccent,
              onPressed: () => calcontroller.clear(),
            ),
          ],
        ),
      ),
    );
  }
}
