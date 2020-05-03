import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

enum COLOR_FORMS { YELLOW, GREEN, PINK, BLUE }

abstract class _HomeControllerBase with Store {
  @observable
  List<Color> formsColor = [
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.blue
  ];

  @observable
  int value = 0;

  @observable
  List<Container> selected;

  @action
  void addform(Container form) {
    if (selected == null) selected = [];
    List<Container> newlist = selected;
    newlist.add(form);

    selected = null;
    selected = newlist;
  }

  @action
  void clearForms() {
    selected = null;
  }

  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }
}
