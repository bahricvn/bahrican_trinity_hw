import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kafama Gore App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                  child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SearchBox(),
                    Divider(),
                    TopLocations(),
                    Divider(),
                    NearLocations(),
                    Divider(),
                    Suggestion(),
                    Divider(),
                    TopRated()
                  ]),
                ),
              )),
              BottomMenu(),
            ],
          ),
        ));
  }

  Widget Suggestion() => Container(
        child: Column(
          children: [
            TitleItem("Mekanlar", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/m1.png", "Vialand",
                      "10km for you", "₺ 100"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/m2.png", "Venezia AVM",
                      "12 km for you", "₺998"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/m3.png", "Kahveci",
                      "too close", "₺ 100,0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/m4.png", "Evimin Çatısı",
                      "10 meters for you", "₺ 0"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget TopRated() => Container(
        child: Column(
          children: [
            TitleItem("Güzel Sözler", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/soz1.png", "Güzel Sözler",
                      "Kalem", "BEDAVA"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/soz2.png", "Güzel Sözler",
                      "Kalem", "BEDAVA"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/soz3.png", "Güzel Sözler",
                      "Kalem", "BEDAVA"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/soz4.png", "Güzel Sözler",
                      "Kalem", "BEDAVA"),
                   LocationItem("assets/images/soz5.jpeg", "Güzel Sözler",
                      "Kalem", "BEDAVA"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Senin İçin", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/m5.png", "Ocean",
                      "13210 km for you", "₺ FREE"),
                  LocationItem("assets/images/m6.png", "Güzel Kız, Georgia",
                      "1322 km for you", "₺ 5699"),
                  LocationItem("assets/images/m7.png", "SUN ",
                      "1000000 km for you", "₺ ???"),
                  LocationItem("assets/images/m8.png", "Galata Kulesi",
                      "32 km for you", "₺ 140"),
                  LocationItem("assets/images/m9.png", "Batumi,Georgia",
                      "1220 km for you", "₺8138"),
                  LocationItem("assets/images/m10.png", "Köprü",
                      "20 km for you", "BEDAVA"),
                ],
              ),
            )
          ],
        ),
      );
  Widget LocationItem(String photo, String city, String far, String price) =>
      Container(
          width: 195,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(0, 170, 170, 170)),
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(width: 185, photo)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin, size: 11),
                          Text(
                            far,
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 53, 121),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        price,
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )),
                ],
              ),
            ],
          ));
  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Stories", "Viewall"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItems("assets/images/ben1.jpg", "B"),
                  StoryItems("assets/images/ben2.jpeg", "A"),
                  StoryItems("assets/images/ben3.jpeg", "H"),
                  StoryItems("assets/images/ben4.jpeg", "R"),
                  StoryItems("assets/images/ben5.jpeg", "İ"),
                  StoryItems("assets/images/ben6.jpeg", "C"),
                  StoryItems("assets/images/ben7.jpeg", "A"),
                  StoryItems("assets/images/ben8.PNG", "N"),
                  StoryItems(
                      "assets/images/m16.PNG", "Tüyap"),
                  StoryItems("assets/images/m17.jpeg", "Deniz 1 "),
                  StoryItems("assets/images/m18.jpeg", "Deniz 2"),
                  StoryItems("assets/images/m19.jpeg", "Deniz 3"),
                  StoryItems("assets/images/m20.jpeg", "Deniz 4"),
                  StoryItems("assets/images/m21.jpeg", "Deniz 5"),
                  StoryItems("assets/images/m22.jpeg", "Deniz 6"),
                ],
              ),
            )
          ],
        ),
      );

  Widget StoryItems(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 200, 200, 200),
                Color.fromARGB(255, 150, 20, 70)
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 250, 250),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 32,
                child: ClipOval(
                  child: Image.asset(photo, fit: BoxFit.cover),
                ),
                backgroundImage: AssetImage(photo),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            link,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(76, 170, 170, 170)),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Yeşilpınar , Eyüpsultan",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: const Color.fromARGB(255, 0, 0, 0),
            )
          ],
        ),
      );
  Widget Header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hoşgeldin Bahrican",
                  style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "Hadi keşfedelim",
                  style: TextStyle(
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.sunny,
                      size: 18,
                      color: Color.fromARGB(255, 90, 6, 223),
                    )),
                SizedBox(
                  width: 3,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.notifications,
                      size: 18,
                    )),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighLightItem("Book", Icons.maps_ugc),
            BottomMenuItem("Chat", Icons.forum, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Padding BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 174, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    } else {}
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          )
        ],
      ),
    );
  }

  Padding HighLightItem(String title, IconData icon) {
    var renk = Color.fromRGBO(38, 23, 247, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, color: renk),
          )
        ],
      ),
    );
  }
}
