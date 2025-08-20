import 'package:get/route_manager.dart';
import 'package:latihan1/calculatorpage.dart';
import 'package:latihan1/pages/editplayerpage.dart';
import 'package:latihan1/pages/footballplayer.dart';
import 'package:latihan1/pages/mainpage.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.main, page: () => Mainpage()),
    GetPage(name: AppRoutes.calculatorpage, page: () => Calpage()),
    GetPage(name: AppRoutes.footballpage, page: () => Footballplayer()),
    GetPage(
      name: AppRoutes.editpage,
      page: () {
        final args = Get.arguments;
        return EditPlayer(index: args['index'], player: args['player']);
      },
    ),
  ];
}
