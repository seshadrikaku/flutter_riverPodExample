import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/Screens/future_provider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: ProviderScreen(),
        // home: StateProviderExmple(),
        home: const FutureProviderScreen(),
        // home: StateNotifierExampleScreen(),
      ),
    );
  }
}
