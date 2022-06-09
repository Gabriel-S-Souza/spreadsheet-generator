import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:formulario_de_atendimento/controllers/client_form/basic_informations_controller.dart';
import 'package:formulario_de_atendimento/controllers/client_form/general_client_controller.dart';
import 'package:formulario_de_atendimento/data/data_access_object.dart';
import 'package:formulario_de_atendimento/view/my_app.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'default_values/default_values.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DataAccessObject dao = DataAccessObject();
  await dao.openDataBase();
  Box<String> userDataBox = await dao.getBox<String>(DefaultBoxes.userData);
  Box<dynamic> osBox = await dao.getBox<dynamic>(DefaultBoxes.os);

  // await osBox.deleteAll(userDataBox.keys);

  if (osBox.isEmpty) {
    await osBox.put(DefaultKeys.osPiracicaba, 1);
    await osBox.put(DefaultKeys.osIracemapolis, 1);
    await osBox.put(DefaultKeys.piracicabaSufix, 'PIRACI');
    await osBox.put(DefaultKeys.iracemapolisSufix, 'IRACE');
    log('OS BOX WAS EMPTY');
    log(osBox.get(DefaultKeys.osPiracicaba));
    log(osBox.get(DefaultKeys.osIracemapolis));
    log(osBox.get(DefaultKeys.piracicabaSufix));
    log(osBox.get(DefaultKeys.iracemapolisSufix));
  }

  GetIt.I.registerSingleton<DataAccessObject>(dao);
  GetIt.I.registerSingleton<Box>(userDataBox, instanceName: DefaultBoxes.userData);
  GetIt.I.registerSingleton<Box>(osBox, instanceName: DefaultBoxes.os);
  GetIt.I.registerSingleton<GeneralClientController>(GeneralClientController());
  GetIt.I.registerSingleton<BasicInformaTionsController>(BasicInformaTionsController(), instanceName: DefaultKeys.basicInfoControllerClient);

  runApp(const MyApp());
}

class UserSettings {
  final String? email;
  final String? name;

  UserSettings({this.email, this.name});
}