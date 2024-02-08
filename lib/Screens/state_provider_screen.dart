import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/providers/state_provider.dart';

//
class StateProviderExmple extends ConsumerWidget {
  const StateProviderExmple({super.key});

  void onSubmitted(String value, WidgetRef ref) {
    ref.read(nameStateProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameStateProvider) ?? '';
    return Scaffold(
        appBar: AppBar(
          title: const Text("StateProvider Exam"),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (value) => onSubmitted(value, ref),
            ),
            Text(name),
          ],
        ));
  }
}
