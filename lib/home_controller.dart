import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  // use home controller for logical part

  int selectedBottomTab = 0;

  void onBottomNavigationTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
    // it work like set state
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
    // it work like set state
  }

  void updateBonnetDoorLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
    // it work like set state
  }

  void updateTrunkDoorLock() {
    isTrunkLock = !isTrunkLock;
    notifyListeners();
    // it work like set state
  }

  bool isCoolSelected = true;

  void updateCoolSelectedTab() {
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyre = false;

  void showTyreController(int index) {
    // Once user on this tyre tab we want to show the tyre
    // let's define this method on bottom navigation
    if (selectedBottomTab != 3 && index == 3) {
      // Because we call this method before [onBottomNavigationTabChange]
      // as you can see we want to show those tyres a little bit later
      // Now  when the car on center after that we set isShowTyre = true
      Future.delayed(
        Duration(milliseconds: 400),
        () {
          isShowTyre = true;
          notifyListeners();
        },
      );
    } else {
      isShowTyre = false;
      notifyListeners();
    }
  }

  bool isShowTyreStatus = false;

  void tyreStatusController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      isShowTyreStatus = true;
      notifyListeners();
    } else {
      Future.delayed(Duration(milliseconds: 400), () {
        isShowTyreStatus = false;
        notifyListeners();
      });
    }
  }
}
