import 'package:flutter/material.dart';
import 'package:threads_clone/app/views/app_entry_page/app.dart';
import 'package:threads_clone/app/utils/handler/starter_handler.dart';

void main() async {
  await init();
  runApp(const App());
}
