// import 'dart:convert';

// import 'package:api_app/models/product_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Product extends StatefulWidget {
//   const Product({Key? key}) : super(key: key);

//   @override
//   _ProductState createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
//   Future<ProductModel> getProductApi() async {
//     final response = await http.get(Uri.parse(
//         "https://webhook.site/028c38bb-c3c3-47f3-bc9b-313c236dfabb?"));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       return ProductModel.fromJson(data);
//     } else {
//       return ProductModel.fromJson(data);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Api2"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//               child: FutureBuilder<ProductModel>(
//                   future: getProductApi(),
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       return ListView.builder(
//                         itemCount: snapshot.data!.data!.length,
//                         itemBuilder: (context, index) {
//                           return Column(
//                             children: [
//                               Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * .3,
//                                   width: MediaQuery.of(context).size.width * .1,
//                                   child: ListView.builder(
//                                       itemCount: snapshot
//                                           .data!.data![index].products!.length,
//                                       itemBuilder: (context, position) {
//                                         // return Text(snapshot.data!.data![index]
//                                         //     .products![position].id!
//                                         //     .toString());
//                                         return Container(
//                                             height: MediaQuery.of(context)
//                                                     .size
//                                                     .height *
//                                                 .25,
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width *
//                                                 .5,
//                                             decoration: BoxDecoration(
//                                                 image: DecorationImage(
//                                                     image: NetworkImage(snapshot
//                                                         .data!
//                                                         .data![index]
//                                                         .products![0]
//                                                         .images![position]
//                                                         .url
//                                                         .toString()))));
//                                       }))
//                             ],
//                           );
//                         },
//                       );
//                     } else {
//                       return CircularProgressIndicator();
//                     }
//                   }))
//         ],
//       ),
//     );
//   }
// }
