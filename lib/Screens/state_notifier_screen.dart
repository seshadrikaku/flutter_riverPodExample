import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/providers/state_notifier_provider.dart';

class StateNotifierExampleScreen extends ConsumerWidget {
  const StateNotifierExampleScreen({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(stateNotifierExmpleProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(stateNotifierExmpleProvider.notifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(stateNotifierExmpleProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("StateNotifier"),
        ),
        body: Column(children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          TextField(
            onSubmitted: (value) => onSubmitAge(ref, value),
          ),
          Text(userInfo.name.toString()),
          Text(userInfo.age.toString()),
          Text(userInfo.isStudent.toString())
        ]));
  }
}
