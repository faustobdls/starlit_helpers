// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$formsColorAtom = Atom(name: '_HomeControllerBase.formsColor');

  @override
  List<Color> get formsColor {
    _$formsColorAtom.context.enforceReadPolicy(_$formsColorAtom);
    _$formsColorAtom.reportObserved();
    return super.formsColor;
  }

  @override
  set formsColor(List<Color> value) {
    _$formsColorAtom.context.conditionallyRunInAction(() {
      super.formsColor = value;
      _$formsColorAtom.reportChanged();
    }, _$formsColorAtom, name: '${_$formsColorAtom.name}_set');
  }

  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$selectedAtom = Atom(name: '_HomeControllerBase.selected');

  @override
  List<Container> get selected {
    _$selectedAtom.context.enforceReadPolicy(_$selectedAtom);
    _$selectedAtom.reportObserved();
    return super.selected;
  }

  @override
  set selected(List<Container> value) {
    _$selectedAtom.context.conditionallyRunInAction(() {
      super.selected = value;
      _$selectedAtom.reportChanged();
    }, _$selectedAtom, name: '${_$selectedAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addform(Container form) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.addform(form);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearForms() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.clearForms();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'formsColor: ${formsColor.toString()},value: ${value.toString()},selected: ${selected.toString()}';
    return '{$string}';
  }
}
