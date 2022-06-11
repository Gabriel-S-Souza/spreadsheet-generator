// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registers_equipment_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistersEquipmentController
    on RegistersEquipmentControllerBase, Store {
  late final _$attendanceStartTimeOfDayAtom = Atom(
      name: 'RegistersEquipmentControllerBase.attendanceStartTimeOfDay',
      context: context);

  @override
  TimeOfDay? get attendanceStartTimeOfDay {
    _$attendanceStartTimeOfDayAtom.reportRead();
    return super.attendanceStartTimeOfDay;
  }

  @override
  set attendanceStartTimeOfDay(TimeOfDay? value) {
    _$attendanceStartTimeOfDayAtom
        .reportWrite(value, super.attendanceStartTimeOfDay, () {
      super.attendanceStartTimeOfDay = value;
    });
  }

  late final _$attendanceEndTimeOfDayAtom = Atom(
      name: 'RegistersEquipmentControllerBase.attendanceEndTimeOfDay',
      context: context);

  @override
  TimeOfDay? get attendanceEndTimeOfDay {
    _$attendanceEndTimeOfDayAtom.reportRead();
    return super.attendanceEndTimeOfDay;
  }

  @override
  set attendanceEndTimeOfDay(TimeOfDay? value) {
    _$attendanceEndTimeOfDayAtom
        .reportWrite(value, super.attendanceEndTimeOfDay, () {
      super.attendanceEndTimeOfDay = value;
    });
  }

  late final _$totalOfHoursAtom = Atom(
      name: 'RegistersEquipmentControllerBase.totalOfHours', context: context);

  @override
  String? get totalOfHours {
    _$totalOfHoursAtom.reportRead();
    return super.totalOfHours;
  }

  @override
  set totalOfHours(String? value) {
    _$totalOfHoursAtom.reportWrite(value, super.totalOfHours, () {
      super.totalOfHours = value;
    });
  }

  late final _$isLoadingAtom = Atom(
      name: 'RegistersEquipmentControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('RegistersEquipmentControllerBase.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$RegistersEquipmentControllerBaseActionController =
      ActionController(
          name: 'RegistersEquipmentControllerBase', context: context);

  @override
  void setAttendanceStartTimeOfDay(TimeOfDay value) {
    final _$actionInfo =
        _$RegistersEquipmentControllerBaseActionController.startAction(
            name:
                'RegistersEquipmentControllerBase.setAttendanceStartTimeOfDay');
    try {
      return super.setAttendanceStartTimeOfDay(value);
    } finally {
      _$RegistersEquipmentControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void setAttendanceEndTimeOfDay(TimeOfDay value) {
    final _$actionInfo =
        _$RegistersEquipmentControllerBaseActionController.startAction(
            name: 'RegistersEquipmentControllerBase.setAttendanceEndTimeOfDay');
    try {
      return super.setAttendanceEndTimeOfDay(value);
    } finally {
      _$RegistersEquipmentControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void _setTotalOfHours(TimeOfDay? hours) {
    final _$actionInfo = _$RegistersEquipmentControllerBaseActionController
        .startAction(name: 'RegistersEquipmentControllerBase._setTotalOfHours');
    try {
      return super._setTotalOfHours(hours);
    } finally {
      _$RegistersEquipmentControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void calculateHoursDifference() {
    final _$actionInfo =
        _$RegistersEquipmentControllerBaseActionController.startAction(
            name: 'RegistersEquipmentControllerBase.calculateHoursDifference');
    try {
      return super.calculateHoursDifference();
    } finally {
      _$RegistersEquipmentControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
attendanceStartTimeOfDay: ${attendanceStartTimeOfDay},
attendanceEndTimeOfDay: ${attendanceEndTimeOfDay},
totalOfHours: ${totalOfHours},
isLoading: ${isLoading}
    ''';
  }
}
