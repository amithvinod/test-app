import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quikart_s_application1/firebase_options.dart';
import 'package:quikart_s_application1/routes/app_routes.dart';
// import 'package:quikart_s_application1/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'quikart_s_application1',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginScreenTwoScreen,
      routes: AppRoutes.routes,
    );
  }
}
