import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instacrap_clone/state/auth/backend/authenticator.dart';
import 'firebase_options.dart';

import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instacrap',
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blueGrey,
          indicatorColor: Colors.blueGrey),
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Instacrap - Clone'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () async {
                final result = Authenticator().loginWithGoogle();
                print(result);
              },
              child: const Text('Logar!'),
            )
          ],
        ));
  }
}
