import 'package:chatgpt/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

List<String> models = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelsItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
            value: models[index],
              child: TextWidget(label: models[index], fontSize: 15)));
  return modelsItems;
}

final chatMessages = [
  {
    "msg": "Hello, who are you?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Hello! I am ChatGPT, a large language model trained by OpenAI. I am an artificial intelligence designed to assist and communicate with people in natural language. I can help answer questions, provide information, and engage in conversations on a wide range of topics. How can I assist you today?",
    "chatIndex": 1,
  },
  {
    "msg": "What is flutter?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Flutter is an open-source mobile app development framework created by Google that allows developers to build high-quality, cross-platform applications for both Android and iOS using a single codebase. Flutter uses a reactive programming model, which enables fast development, testing, and deployment of mobile apps with a customizable and rich set of pre-built widgets and tools. Its features include hot reload for rapid iteration, a fast rendering engine, and extensive support for third-party packages, making it a popular choice for building beautiful, high-performance mobile apps.",
    "chatIndex": 1,
  },
  {
    "msg": "Okay, Thank You!",
    "chatIndex": 0,
  },
  {
    "msg":
        "You're welcome! If you have any more questions or if there's anything else I can help you with, feel free to ask.",
    "chatIndex": 1,
  },
];
