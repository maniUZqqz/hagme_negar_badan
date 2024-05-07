import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'galery2.dart';
import 'dart:typed_data';

class galery extends StatefulWidget {
  const galery({super.key});

  @override
  State<galery> createState() => _galeryState();
}

class _galeryState extends State<galery> {
  File ? _selectedImage ;
  Uint8List? Bytes ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "عکس رو وارد کنید",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: MaterialButton(
                        color: Colors.blue,
                        child: const Text(
                          "عکس گرفتن از جلو",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),
                        ),
                        onPressed: () {
                          _PickerImageFormGallery() ;
                        },
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
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
                                    builder: (context)=> const galery2()
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
              _selectedImage != null ? Image.file(
                  _selectedImage!
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
  Future _PickerImageFormGallery() async{
    // این جای عکس تایین میشه چه عکسی نمایش داداه شود
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery
    );
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}

