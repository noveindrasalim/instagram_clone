import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.amber],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(55),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://picsum.photos/536/354"),
            ),
          ),
        )
      ],
    );
  }
}
