// import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/Model/state_notifier_model.dart';

class StateNotifierExample extends StateNotifier<StateNotifierModelExample> {
  StateNotifierExample()
      : super(const StateNotifierModelExample(
            name: "Exmple", age: 0, isStudent: false));

  void updateName(String na) {
    state = state.copyWith(name: na);
  }

  void updateAge(int ag) {
    state = state.copyWith(age: ag);
  }
}

final stateNotifierExmpleProvider =
    StateNotifierProvider<StateNotifierExample, StateNotifierModelExample>(
        (ref) => StateNotifierExample());
