// import 'package:flutter/material.dart';
// import 'package:shopping_app_getx_practice/controller/tap_controller.dart';
// import 'package:get/get.dart';
// import 'package:shopping_app_getx_practice/next_page.dart';

// class HomePages extends StatelessWidget {
//   const HomePages({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TapController tapController = Get.put(TapController());
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.accessibility_sharp),
//         title: Text("My home garden"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           spacing: 20,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<TapController>(builder: (_) {
//               return Text(tapController.x.toString(),
//                   style: TextStyle(fontSize: 20));
//             }),
//             GestureDetector(
//               onTap: () {
//                 tapController.increaseX();
//               },
//               child: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Increase",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.lightGreen,
//                     borderRadius: BorderRadius.circular(10)),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 tapController.decreaseX();
//               },
//               child: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Decrease",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.lightGreen,
//                     borderRadius: BorderRadius.circular(10)),
//               ),
//             ), //Next page
//             ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: WidgetStatePropertyAll(Colors.blue)),
//                 onPressed: () {
//                   Get.to(() => NextPage());
//                   // Navigator.pushNamed(context, '/next');
//                 },
//                 child: Text("Next Page"))
//           ],
//         ),
//       ),
//     );
//   }
// }
