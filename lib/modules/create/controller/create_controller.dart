import 'package:get/get.dart';

class CreateController extends GetxController {
  RxString tournamentName = ''.obs;
  RxString tournamentDate = ''.obs;
  RxString tournamentLocation = ''.obs;
  RxString tournamentTeam = ''.obs;
  RxString tournamentHead = ''.obs;

  void setTournamentName(String name) {
    tournamentName.value = name;
  }

  void setTournamentDate(String date) {
    tournamentDate.value = date;
  }
  void setTournamentLocation(String location) {
    tournamentLocation.value = location;
  }
  void setTournamentTeam(String team) {
    tournamentTeam.value = team;
  }
  void setTournamentHead(String head) {
    tournamentHead.value = head;
  }

  @override
  void onInit() {
    super.onInit();
  }

// 필요한 다른 메서드들...
}

