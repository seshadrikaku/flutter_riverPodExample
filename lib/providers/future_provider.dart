import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/Model/future_provider_model.dart';
import 'package:riverpodexm/Repositry/future_respositry.dart';

final exmpleForFutureProvider =
    Provider((ref) => FutureProviderTestingRepository());

final dataProvider =
    FutureProvider<List<FutureProviderExampleModel>>((ref) async {
  final repositoryData = ref.watch(exmpleForFutureProvider);
  return repositoryData.GetFutureProviderData();
});
