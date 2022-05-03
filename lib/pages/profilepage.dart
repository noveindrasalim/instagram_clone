import 'package:flutter/material.dart';
import '../widgets/profilepicture.dart';
import '../widgets/infoitem.dart';
import '../widgets/storyitem.dart';
import '../widgets/tabitem.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Nove_43",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoItem("100", "Posts"),
                      infoItem("126K", "Followers"),
                      infoItem("10", "Following"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: "nove_43",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: " #Hastag",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link Goes Here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyitem(
                      title: "Story 1",
                      linkFoto: "https://picsum.photos/id/1001/5616/3744"),
                  storyitem(
                      title: "Story 2",
                      linkFoto: "https://picsum.photos/id/1003/1181/1772"),
                  storyitem(
                      title: "Story 3",
                      linkFoto: "https://picsum.photos/id/1006/3000/2000"),
                  storyitem(
                      title: "Story 4",
                      linkFoto: "https://picsum.photos/id/1013/4256/2832"),
                  storyitem(
                      title: "Story 5",
                      linkFoto: "https://picsum.photos/id/1014/6016/4000"),
                  storyitem(
                      title: "Story 6",
                      linkFoto: "https://picsum.photos/id/1016/3844/2563"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              tabItem(icon: Icons.grid_on_outlined, active: true),
              tabItem(icon: Icons.person_pin_outlined, active: false),
            ]),
          ),
          postingan(poto: "https://picsum.photos/id/1027/2848/4272"),
          postingan(poto: "https://picsum.photos/id/1026/4621/3070"),
          postingan(poto: "https://picsum.photos/id/1028/5184/3456"),
          postingan(poto: "https://picsum.photos/id/1029/4887/2759"),
          postingan(poto: "https://picsum.photos/id/1031/5446/3063"),
          postingan(poto: "https://picsum.photos/id/1038/3914/5863"),
          postingan(poto: "https://picsum.photos/id/1036/4608/3072"),
          postingan(poto: "https://picsum.photos/id/104/3840/2160"),
          postingan(poto: "https://picsum.photos/id/1047/3264/2448"),
          postingan(poto: "https://picsum.photos/id/1050/6000/4000"),
          postingan(poto: "https://picsum.photos/id/1055/5472/3648"),
          postingan(poto: "https://picsum.photos/id/1054/3079/1733"),
        ],
      ),
    );
  }
}

class postingan extends StatelessWidget {
  const postingan({
    Key? key,
    required this.poto,
  }) : super(key: key);

  final String poto;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
      itemBuilder: (context, index) => Image.network(
        poto,
        fit: BoxFit.cover,
      ),
    );
  }
}
