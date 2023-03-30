import 'package:componentes/ui/screens/screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: const [
          //Locale('en', 'US'),
          //Locale('es', 'EU')
        ],
        // home: HomePageTemp(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePageTemp(),
          'alert': (BuildContext context) => const AlertsScreen(),
          'inputs': (BuildContext context) => const InputsScreen(),
        },
        onGenerateRoute: (RouteSettings setting) {
          print('Ruta llamada : ${setting.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => const AlertsScreen());
        },
        theme: ThemeData.light().copyWith(
          //Color primario
          primaryColor: Colors.indigo,
          //Appbar Theme
          appBarTheme: const AppBarTheme(
            color: Colors.blueGrey,
            elevation: 0,
          ),
        ));
  }
}
