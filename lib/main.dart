import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.blue
       ),
       home: Scaffold(
         body: Center(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Column(
                     children: [
                       TextFormField(
                         controller: nameController,
                         decoration: InputDecoration(
                           contentPadding: EdgeInsets.all(12),
                           hintText: 'email'
                         ),
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: TextFormField(
                     controller: passwordController,
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.all(10), 
                       hintText: 'Password'
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
}
