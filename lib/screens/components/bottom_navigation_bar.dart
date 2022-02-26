import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_car_app/constants.dart';

class TeslaBottomNavigation extends StatelessWidget {
  const TeslaBottomNavigation({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: List.generate(
            navIconSrc.length,
            (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    navIconSrc[index],
                    color: index == selectedTab ? primaryColor : Colors.white54,
                  ),
                  label: "",
                ))
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset("assets/icons/Lock.svg"),
        //   label: "",
        // ),
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset("assets/icons/Charge.svg"),
        //   label: "",
        // ),
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset("assets/icons/Temp.svg"),
        //   label: "",
        // ),

        );
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];
