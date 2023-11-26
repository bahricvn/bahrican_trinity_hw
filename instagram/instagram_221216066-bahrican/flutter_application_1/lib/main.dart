import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 0, right: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz_rounded,
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: Image.asset(photo)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined,
                          size: 28, color: Colors.black87),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: Colors.black87),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.flag_outlined, color: Colors.black87),
                ],
              ),
            ),
            CommentAdd("ardaturan", "her gecenin sabahi olmaz"),
            CommentAdd("khontkar", "100"),
          ]),
        ),
      );
  Padding CommentAdd(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: comment,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
                color: Colors.black87,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(45, 209, 179, 1),
                  Color.fromARGB(240, 0, 17, 248),
                  Color.fromARGB(255, 255, 170, 0)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 34,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hosgeldin Bahricanw",
                  style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/ss.png", width: 120),
                ),
                // ignore: prefer_const_constructors
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 0, top: 4, left: 6, bottom: 4),
                      child: Icon(Icons.add_circle,
                          color: Colors.black87, size: 30),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.favorite, color: Colors.black87, size: 30),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.send, color: Colors.black87, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        storyWidget("assets/images/ben2.png", "Hikayen"),
                        storyWidget("assets/images/ahmet.png", "ahmeterenw"),
                        storyWidget("assets/images/emir.png", "emirryalcin5"),
                        storyWidget("assets/images/omerkasap.jpeg", "omerykasap"),
                        storyWidget("assets/images/dan.jpeg", "theweeknd"),
                        storyWidget("assets/images/emre.png", "emreozturkw"),
                        storyWidget("assets/images/orcun.jpeg", "orcundemircan"),
                        storyWidget("assets/images/yasin.png", "yasiinkasap"),
                        storyWidget("assets/images/furkan.jpg","furkansahiny"),
                        storyWidget("assets/images/leofenerbahce.jpg", "leocat"),
                        storyWidget("assets/images/aziz.png", "azizkeremcalikk"),
                        storyWidget("assets/images/ye.jpg", "ye"),

                      ],
                    ),
                  ),
                  postItem("assets/images/ben2.png", "assets/images/kopru.jpg", 
                      "bahricanw", "İstanbul,Türkiye"),
                  postItem("assets/images/furkan.jpg", "assets/images/lovesck.png",
                      "furkansahinn", ""),
                  postItem("assets/images/omerkasap.jpeg", "assets/images/ss.png",
                      "omerykasap", "USA"),
                  postItem("assets/images/ben2.png", "assets/images/tatil2.png",
                      "bahricanw", "georgia"),
                  postItem("assets/images/emre.png", "assets/images/emre.png",
                      "emreozturkw", "neresi bilmiyorum"),
                  postItem("assets/images/ben2.png", "assets/images/tatil.png",
                      "bahricanw", "Kemerburgaz,Türkiye,Kamp"),
                  postItem("assets/images/ben.png", "assets/images/utopia.jpg",
                      "trscott", ""),
                ],
              ),
            ),
          )),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(50, 0, 0, 0)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.search_rounded,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.smart_display,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.favorite,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.person,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
