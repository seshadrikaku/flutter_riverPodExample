import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/Screens/read_more/read_more_screen.dart';
import 'package:riverpodexm/providers/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchedData = ref.watch(dataProvider);
    return fetchedData.when(
        data: (data) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Example of FutureProvider"),
              backgroundColor: Colors.amber[200],
            ),
            body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ReadMoreWidget(id: data[index].id),
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
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
                        ),
                      ),
                    ),
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
