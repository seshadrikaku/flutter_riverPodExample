import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/providers/future_provider.dart';

class ReadMoreWidget extends ConsumerWidget {
  final int id;

  const ReadMoreWidget({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productInfo = ref.watch(futureProviderById(id));
    return productInfo.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Product Details"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  data.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: Center(
          child: Text("Error: $error"),
        ),
      ),
    );
  }
}
