import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'task_page.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ----------------------------
  // Back4App Configuration
  // ----------------------------
  const keyApplicationId = 'TeQHbH1fww3wuT5XIpCOOyFfR3tI87vUDaxcL6Gh';
  const keyClientKey = '98iajmZpyNazuGOO6sNg3LQHlT5PRBWwniM3qktT';
  const keyParseServerUrl = 'https://parseapi.back4app.com/';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    autoSendSessionId: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}