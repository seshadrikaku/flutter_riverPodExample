import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/Repositry/stream_reposirty.dart';

final streamExmpleProvider = Provider((ref) => StreamProviderExample());

final streamProvider = StreamProvider<DateTime>((ref) {
  final dataTime = ref.watch(streamExmpleProvider);
  return dataTime.getCurrentDate();
});
