import 'package:flutter/material.dart';

import 'camera_Namayesh.dart';


class camera extends StatelessWidget {
  const camera({super.key});

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
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 130,
            ),
            Text(
              "دوربین",
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
                builder: (context)=> const cameraNamaysh()
            )
        );
      },
    );
  }
}
