import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hagme_negar_badan/end.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'dart:io';
import 'package:flutter/material.dart';


class galery2 extends StatefulWidget {
  const galery2({super.key});

  @override
  State<galery2> createState() => _galery2State();
}

class _galery2State extends State<galery2> {
  File ? _selectedImage2 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "عکس از راست وارد کنید",
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
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: MaterialButton(
                        color: Colors.blue,
                        child: const Text(
                          "عکس گرفتن از بقل",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),
                        ),
                        onPressed: () {
                          _PickerImageFormGallery2() ;
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
                                    builder: (context)=> const gavab()
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
              _selectedImage2 != null ? Image.file(
                  _selectedImage2!
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
  Future _PickerImageFormGallery2() async{
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery
    );
    if (returnedImage == null) return;
    setState(() {
      _selectedImage2 = File(returnedImage!.path);
    });
  }
}
