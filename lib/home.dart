// import 'dart:convert';
// import 'package:api_app/api_models.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<Api> UserList = [];
//   Future<List<Api>> getUserApi() async {
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
//     var data = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       for (Map i in data) {
//         UserList.add(Api.fromJson(i));
//       }
//       return UserList;
//     } else {
//       return UserList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Api"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//               child: FutureBuilder(
//             future: getUserApi(),
//             builder: (context, AsyncSnapshot snapshot) {
//               return ListView.builder(
//                   itemCount: UserList.length,
//                   itemBuilder: (context, index) {
//                     if (!snapshot.hasData) {
//                       return CircularProgressIndicator();
//                     } else {
//                       return Card(
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Column(
//                                   children: [
//                                     Text(snapshot.data[index].id.toString()),
//                                     Text(snapshot.data[index].name.toString()),
//                                     Text(snapshot.data[index].username
//                                         .toString()),
//                                     Text(snapshot.data[index].address.street
//                                         .toString()),
//                                     Text(snapshot.data[index].address.geo.lat 
//                                         .toString())
//                                   ],
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       );
//                     }
//                   });
//             },
//           ))
//         ],
//       ),
//     );
//   }
// }
