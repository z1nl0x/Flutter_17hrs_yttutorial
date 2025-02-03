import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instacrap_clone/state/auth/backend/authenticator.dart';
import 'package:instacrap_clone/state/auth/providers/auth_state_provider.dart';
import 'package:instacrap_clone/state/auth/providers/is_logged_in_provider.dart';
import 'firebase_options.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Ativar o App Check com Play Integrity
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider
        .playIntegrity, // Aqui estamos ativando o Play Integrity como provedor
  );

  runApp(
    ProviderScope(child: App()),
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
      home: Consumer(builder: (context, ref, child) {
        final isLoggedIn = ref.watch(isLoggedInProvider);
        if (isLoggedIn) {
          return const MainView();
        } else {
          return const LoginView();
        }
      }),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main View'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return TextButton(
            onPressed: () async {
              await ref.read(authStateProvider.notifier).logOut();
            },
            child: Text('Logout'),
          );
        },
      ),
    );
  }
}

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instacrap - Clone'),
      ),
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Login View'),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () async {
                  await ref.read(authStateProvider.notifier).loginWithGoogle();
                },
                child: const Text('Logar'))
          ],
        ),
      ),
    );
  }
}
