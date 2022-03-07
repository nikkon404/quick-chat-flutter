import 'package:flutter/material.dart';
import 'package:quick_chat_app/utils/constants.dart';
import 'package:quick_chat_app/views/setup/setup_page.dart';

void main() {
  runApp(const QuickChatApp());
}

class QuickChatApp extends StatelessWidget {
  const QuickChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SetupPage());
  }
}
