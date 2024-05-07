import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gender.dart';
import 'package:ffi/ffi.dart';
import 'package:python_ffi/python_ffi.dart';
import 'dart:ffi';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Spacer(),
                Text(
                  "در این بخش جنسیت را اتنخاب کنید",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: const Male(),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: const Female(),
                ),
              ],
            ),
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}