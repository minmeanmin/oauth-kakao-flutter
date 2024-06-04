import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oauthapp/_core/move.dart';
import 'ui/login_page/login_page.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp() 호출 전 Flutter SDK 초기화
  FlutterNaverLogin.initSdk(clientId: 'R20LPQpzlu2cKacLhpow', clientName: 'login_naver_flutter', clientSecret: '3A3QssAyQc');
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: getRouters(),
    );
  }
}