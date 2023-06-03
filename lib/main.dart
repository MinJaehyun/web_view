import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

void main() {
  // 앱 실행할 준비가 완료될 때까지 기다린다.
  // note: flutter 프레임워크는 앱을 실행할 준비가 될 때까지 기다리라는 의미.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
