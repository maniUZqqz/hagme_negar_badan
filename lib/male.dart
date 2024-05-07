import 'package:flutter/material.dart';
import 'package:hagme_negar_badan/camera.dart';
import 'package:hagme_negar_badan/picker.dart';

class PageMale extends StatelessWidget {
  const PageMale({super.key});

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
                    " عکس را از کجا وارد می کنید ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    )
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
                  child: const camera(),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: const picker(),
                ),
              ],
            ),
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
