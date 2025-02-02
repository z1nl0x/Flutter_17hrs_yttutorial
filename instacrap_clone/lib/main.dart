import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   useMaterial3: true,
      // ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}


class StartPage extends StatelessWidget {
const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instacrap - Clone'),
      ),
      body: Center(
        child: Text(
          'Helo World!'
        ),
      ),
    );
  }
}