// It looks like the deprecation message is suggesting you should "listen to the provider itself" instead of using a Stream. This is likely referring to Riverpod or Provider state management in Flutter.

// How to Fix It?
// If you're using Riverpod, instead of using StreamProvider, you should listen to the provider directly.

// 1. Using Riverpod Instead of Stream
// Before (Using StreamProvider - Deprecated)

// dart
// Copiar
// Editar
// final myStreamProvider = StreamProvider<int>((ref) async* {
//   yield 1;
//   yield 2;
// });
// After (Using StateNotifierProvider or AsyncNotifier)

// dart
// Copiar
// Editar
// final myProvider = StateProvider<int>((ref) => 0);
// Then, listen in a Widget:

// dart
// Copiar
// Editar
// final value = ref.watch(myProvider);
// 2. Using listen Instead of Stream
// If the deprecation message says "listen to the provider itself," you should do:

// dart
// Copiar
// Editar
// ref.listen(myProvider, (previous, next) {
//   print("Value changed: $next");
// });
// This way, your app reacts to state changes without needing a Stream.

// What Should You Do?
// If you're using StreamProvider, switch to StateProvider or AsyncNotifier in Riverpod.
// Instead of Stream, directly watch or listen to the provider in your widget.
// Let me know if you need help adapting your code! 


import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
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
      home: const HomePage(),
    );
  }
}

const names = [
  'Alice',
  'Bob',
  'Charlie',
  'David',
  'Eve',
  'Fred',
  'Ginny',
  'Harriet',
  'Ileana',
  'Joseph',
  'Kincaid',
  'Larry',
];

final tickerProvider = StreamProvider(
  (ref) => Stream.periodic(
    const Duration(
      seconds: 1,
    ),
    (i) => i + 1,
  ),
);

final namesProvider = StreamProvider(
  (ref) => ref.watch(tickerProvider.stream).map(
        (count) => names.getRange(
          0,
          count,
        ),
      ),
);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final names = ref.watch(namesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('StreamProvider'),
      ),
      body: names.when(
        data: (names) {
          return ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(names.elementAt(index)),);
            },
          );
        },
        error: (error, stackTrace) =>
            const Text('Reached the end of the list!'),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
