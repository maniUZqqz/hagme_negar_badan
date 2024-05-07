import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hagme_negar_badan/galery.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'dart:io';
import 'package:flutter/material.dart';

import 'galery4.dart';


class galery3 extends StatefulWidget {
  const galery3({super.key});

  @override
  State<galery3> createState() => _galery3State();
}

class _galery3State extends State<galery3> {
  File ? _selectedImage3 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "عکس از سمت راست وارد کنید",
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: MaterialButton(
                        color: Colors.blue,
                        child: const Text(
                          "عکس گرفتن از راست",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                        onPressed: () {
                          _PickerImageFormGallery3() ;
                        },
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child:InkWell(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  "بعدی",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                  ),
                                ),
                                Icon(
                                  Icons.next_plan_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=> const galery4()
                                )
                            );
                          },
                        )
                    )

                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _selectedImage3 != null ? Image.file(
                  _selectedImage3!
              ): const Text(
                "عکس وارد نشده",
                style: TextStyle(
                    fontSize: 40
                ),
              )

            ],
          )
      ),
    );
  }
  Future _PickerImageFormGallery3() async{
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery
    );
    if (returnedImage == null) return;
    setState(() {
      _selectedImage3 = File(returnedImage!.path);
    });
  }
}