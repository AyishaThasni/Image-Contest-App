import 'package:flutter/material.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 2, right: 2, top: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 2),
                children: [
                  buildPostSection(
                      "https://images.pexels.com/photos/10402422/pexels-photo-10402422.jpeg?cs=srgb&dl=pexels-wendel-moretti-10402422.jpg&fm=jpg",
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                  buildPostSection(
                      "https://images.pexels.com/photos/1781932/pexels-photo-1781932.jpeg?cs=srgb&dl=pexels-alice-castro-1781932.jpg&fm=jpg",
                      "https://images.pexels.com/photos/3760822/pexels-photo-3760822.jpeg?cs=srgb&dl=pexels-sound-on-3760822.jpg&fm=jpg"),
                  buildPostSection(
                      "https://images.pexels.com/photos/12906894/pexels-photo-12906894.jpeg?cs=srgb&dl=pexels-yana-moroz-12906894.jpg&fm=jpg",
                      "https://images.pexels.com/photos/3004884/pexels-photo-3004884.jpeg?cs=srgb&dl=pexels-ali-pazani-3004884.jpg&fm=jpg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildPostSection(String urlPost, String urlProfilePhoto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0.5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xffffc371).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPostFirstRow(urlProfilePhoto),
          const SizedBox(
            height: 5,
          ),
          buildPostPicture(urlPost),
          const SizedBox(
            height: 5,
          ),
          Text(
            "353 views ",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Row buildPostFirstRow(String urlProfilePhoto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Hero(
                tag: urlProfilePhoto,
                child: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(urlProfilePhoto),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Lewis John",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
        const Icon(
          Icons.more_vert,
        )
      ],
    );
  }

  Stack buildPostPicture(String urlPost) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlPost),
              )),
        ),
        const SizedBox(
          width: 500,
        ),
        Positioned(
          bottom: 20,
          right: 50,
          child: Icon(Icons.thumb_up,
              size: 25,
              color: (like)
                  ? Colors.lightBlueAccent
                  : Colors.white.withOpacity(0.7)),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Icon(Icons.thumb_down,
              size: 25, color: Colors.white.withOpacity(0.7)),
        ),
      ],
    );
  }
}
