import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class cameraNamaysh4 extends StatefulWidget {
  const cameraNamaysh4({super.key});

  @override
  State<cameraNamaysh4> createState() => _cameraNamaysh4State();
}

class _cameraNamaysh4State extends State<cameraNamaysh4> {
  File ? _selectedImage4 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "عکس از سمت چپ وارد کنید",
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
                          "عکس گرفتن از سمت چپ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),
                        ),
                        onPressed: () {
                          _PickerImageFormGallery4() ;
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
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context)=> const
//                                )
//                            );
                          },
                        )
                    )

                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _selectedImage4 != null ? Image.file(
                  _selectedImage4!
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
  Future _PickerImageFormGallery4() async{
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.camera
    );
    if (returnedImage == null) return;
    setState(() {
      _selectedImage4 = File(returnedImage!.path);
    });
  }
}
