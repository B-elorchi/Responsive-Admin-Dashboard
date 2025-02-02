import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/routing/routes_names.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = LoginPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case LoginPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case OverviewPageRoute:
        //  return _customIcon(Icons.drive_eta, itemName);
         return _customIcon(Icons.home, itemName);
      // case clientsPageDisplayName:
      //   return _customIcon(Icons.people_alt_outlined, itemName);
      // case authenticationPageDisplayName:
      //   return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
