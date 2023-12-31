// import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:get/get.dart';
//
// /*
//
//   ValueBuilder 更像个小型的 StatefulWidget
//   通过 updateFn 来更新数据
//
// */
//
// // ignore: must_be_immutable
// class StateValueBuilderView extends StatelessWidget {
//   StateValueBuilderView({Key? key}) : super(key: key);
//
//   var count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ValueBuilder"),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: ValueBuilder<int>(
//               initialValue: count,
//               builder: (value, updateFn) {
//                 return
//                   Column(
//                   children: [
//                     Text("count -> " + value.toString()),
//                     ElevatedButton(
//                       onPressed: () {
//                         updateFn(value + 1);
//                       },
//                       child: Text('ValueBuilder -> add'),
//                     )
//                   ],
//                 );
//               },
//               // builder: (value, updateFn) => Switch(
//               //   value: value,
//               //   onChanged:
//               //       updateFn, // same signature! you could use ( newValue ) => updateFn( newValue )
//               // ),
//               // if you need to call something outside the builder method.
//               onUpdate: (value) => print("Value updated: $value"),
//               onDispose: () => print("Widget unmounted"),
//             ),
//           ),
//           Divider(),
//           ElevatedButton(
//             onPressed: () {
//               count++;
//             },
//             child: Text('add'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
/*
  ValueBuilder 更像个小型的 StatefulWidget
  通过 updateFn 来更新数据
*/

// typedef ValueBuilderUpdateCallback<T> = void Function(T snapshot);

class StateValueBuilderView extends StatelessWidget {
  StateValueBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ValueBuilder"),
      ),
      body: Column(
        children: [
          Center(
            child: ValueBuilder<int?>(
              initialValue: 10,
              builder: (value, updateFn) {
                return Column(
                  children: [
                    Text("count -> " + value.toString()),
                    ElevatedButton(
                      onPressed: () {
                        updateFn(value! + 1);
                      },
                      child: Text('ValueBuilder -> add'),
                    )
                  ],
                );
              },
              // builder: (value, updateFn) => Switch(
              //   value: value,
              //   onChanged:
              //       updateFn, // same signature! you could use ( newValue ) => updateFn( newValue )
              // ),
              // if you need to call something outside the builder method.
              onUpdate: (value) => print("Value updated: $value"),
              onDispose: () => print("Widget unmounted"),
            ),
          ),
        ],
      ),
    );
  }
}


