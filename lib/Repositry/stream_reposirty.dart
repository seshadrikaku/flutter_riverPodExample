class StreamProviderExample {
  Stream<DateTime> getCurrentDate() {
    return Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now());
  }
}
