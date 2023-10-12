import 'package:flutter/material.dart';
import 'presentation/screens/counter/counter_screen.dart';
main() {
  runApp(const MayApp());
}
class MayApp extends StatelessWidget {
  const MayApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(useMaterial3: true,colorSchemeSeed: Color.fromARGB(255, 255, 0, 212)),
      debugShowCheckedModeBanner: false,
      home: const Counter(),
    );
  }
}