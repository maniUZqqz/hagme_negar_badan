import 'package:flutter/material.dart';

import 'female.dart';
import 'male.dart';

class Male extends StatelessWidget {
  const Male({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
        ),
        child: const Column(
          children: [
            Icon(
              Icons.male,
              color: Colors.white,
              size: 130,
            ),
            Text(
              "مذکر",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=> const PageMale()
            )
        );
      },
    );
  }
}

class Female extends StatelessWidget {
  const Female({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
        ),
        child: const Column(
          children: [
            Icon(
              Icons.female,
              color: Colors.white,
              size: 130,
            ),
            Text(
                "مونث",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=> const PageFemale()
            )
        );
      },
    );
  }
}
