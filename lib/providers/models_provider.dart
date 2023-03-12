import 'package:chatgpt/models/main_model.dart';
import 'package:chatgpt/services/api_service.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "text-davinci-003";
  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<MainModel> modelsList = [];

  List<MainModel> get getModelsList {
    return modelsList;
  }

  Future<List<MainModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}