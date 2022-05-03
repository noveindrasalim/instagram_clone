import 'package:flutter/material.dart';

class storyitem extends StatelessWidget {
  const storyitem({Key? key, required this.title, required this.linkFoto})
      : super(key: key);

  final String title;
  final String linkFoto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300,
                    )),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(linkFoto),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
        ),
      ],
    );
  }
}
