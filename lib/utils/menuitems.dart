import 'package:flutter/material.dart';

class MenuItems {
  String text = '';
  IconData icons = IconData(0);

  MenuItems(this.icons, this.text);
}

final List<MenuItems> menuitems = [
  MenuItems(Icons.login, 'Login'),
  MenuItems(Icons.assignment_return_outlined, 'Signup'),
];
