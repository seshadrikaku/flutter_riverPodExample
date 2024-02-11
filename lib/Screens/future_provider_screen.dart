import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/providers/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchedData = ref.watch(dataProvider);
    return fetchedData.when(
        data: (data) {
          return Scaffold(
            body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  // String? imageURl = data[index].thumbnail;
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            data[index].title,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              data[index].description,
                            ),
                          )
                        ],
                      )
                    ],
                  );
                }),
          );
        },
        error: (error, s) => const Text("njnfhd"),
        loading: () => const Column(
              children: [Center(child: Text("No Data Availbe"))],
            ));
  }
}
