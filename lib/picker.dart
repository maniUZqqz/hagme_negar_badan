import 'package:flutter/material.dart';
import 'galery.dart';

class picker extends StatelessWidget {
  const picker({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:  Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
        ),
        child: const Column(
          children: [
            Icon(
              Icons.folder,
              color: Colors.white,
              size: 130,
            ),
            Text(
              "گالری",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=> const galery()
            )
        );
     },
    );
  }
}