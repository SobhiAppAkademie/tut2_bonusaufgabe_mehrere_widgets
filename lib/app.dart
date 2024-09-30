
import 'package:flutter/material.dart';
import 'package:tut2_multiple_widgets/features/home/presentation/start_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      initialRoute: "start",
      onGenerateRoute: (RouteSettings route) {
        switch (route.name) {
          default:
            return MaterialPageRoute(builder: (context) => const StartScreen());
        }
      },
    );
  }
}
