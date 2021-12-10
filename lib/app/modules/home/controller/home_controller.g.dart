// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$listAtom = Atom(name: 'HomeControllerBase.list');

  @override
  ObservableList<Swapi> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<Swapi> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$listPeopleAtom = Atom(name: 'HomeControllerBase.listPeople');

  @override
  ObservableList<People> get listPeople {
    _$listPeopleAtom.reportRead();
    return super.listPeople;
  }

  @override
  set listPeople(ObservableList<People> value) {
    _$listPeopleAtom.reportWrite(value, super.listPeople, () {
      super.listPeople = value;
    });
  }

  final _$isShowSkeletonAtom = Atom(name: 'HomeControllerBase.isShowSkeleton');

  @override
  bool get isShowSkeleton {
    _$isShowSkeletonAtom.reportRead();
    return super.isShowSkeleton;
  }

  @override
  set isShowSkeleton(bool value) {
    _$isShowSkeletonAtom.reportWrite(value, super.isShowSkeleton, () {
      super.isShowSkeleton = value;
    });
  }

  final _$isShowCardSkeletonAtom =
      Atom(name: 'HomeControllerBase.isShowCardSkeleton');

  @override
  bool get isShowCardSkeleton {
    _$isShowCardSkeletonAtom.reportRead();
    return super.isShowCardSkeleton;
  }

  @override
  set isShowCardSkeleton(bool value) {
    _$isShowCardSkeletonAtom.reportWrite(value, super.isShowCardSkeleton, () {
      super.isShowCardSkeleton = value;
    });
  }

  final _$optionSelectedAtom = Atom(name: 'HomeControllerBase.optionSelected');

  @override
  int get optionSelected {
    _$optionSelectedAtom.reportRead();
    return super.optionSelected;
  }

  @override
  set optionSelected(int value) {
    _$optionSelectedAtom.reportWrite(value, super.optionSelected, () {
      super.optionSelected = value;
    });
  }

  final _$initAsyncAction = AsyncAction('HomeControllerBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  dynamic fillContent(Swapi swapi) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.fillContent');
    try {
      return super.fillContent(swapi);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic selectMenuOption(int index) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.selectMenuOption');
    try {
      return super.selectMenuOption(index);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findByPeoples(ResultResponse response) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findByPeoples');
    try {
      return super.findByPeoples(response);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findByPlanets() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findByPlanets');
    try {
      return super.findByPlanets();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findByFilms() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findByFilms');
    try {
      return super.findByFilms();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findBySpecies() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findBySpecies');
    try {
      return super.findBySpecies();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findByVehicles() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findByVehicles');
    try {
      return super.findByVehicles();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic findByStarships() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findByStarships');
    try {
      return super.findByStarships();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
listPeople: ${listPeople},
isShowSkeleton: ${isShowSkeleton},
isShowCardSkeleton: ${isShowCardSkeleton},
optionSelected: ${optionSelected}
    ''';
  }
}
