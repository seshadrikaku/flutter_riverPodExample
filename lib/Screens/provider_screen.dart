import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexm/providers/provider_exm.dart';

// Consumer widget Entire Widget is rebuilds
// class ProviderScreen extends ConsumerWidget {
//   const ProviderScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final name = ref.watch(nameProvider);
//     final number = ref.watch(numberProvider);
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Text(name),
//             Text(number.toString()),
//           ],
//         ),
//       ),
//     );
//   }
// }/

// class ProviderScreen extends StatelessWidget {
//   const ProviderScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PRovider Example"),
//       ),
//       body: Consumer(
//         builder: (context, ref, child) {
//           final name = ref.watch(nameProvider); // ref.watch always checks
//           final numberRead =
//               ref.read(numberProvider); //ref.read one time only read
//           return Column(
//             children: [
//               Text(name),
//               Text(numberRead.toString()),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

class ProviderScreen extends ConsumerStatefulWidget {
  const ProviderScreen({super.key});

  @override
  ConsumerState<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends ConsumerState<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Text(name),
    );
  }
}
