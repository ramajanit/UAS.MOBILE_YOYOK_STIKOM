import 'package:flutter/material.dart';
import './bottom/travelcard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatelessWidget {
  List<String> urls = [
    "https://img.okezone.com/content/2022/05/29/11/2602142/rekomendasi-4-kost-eksklusif-jakarta-pusat-terbaik-elWsyaZFxn.jpg",
    "https://img.okezone.com/okz/500/library/images/2022/05/29/rz5tg22u4oqehcivo0os_21905.jpg",
    "https://static-id.lamudi.com/static/media/bm9uZS9ub25l/2x2x5x880x450/95d26c5f37eef0.webp",
    "https://jos-kontraktorjogja.com/wp-content/uploads/2022/05/25.jpg",
    "https://interiordesign.id/wp-content/uploads/2022/03/3-2-1024x576.png",
    "https://s.yimg.com/ny/api/res/1.2/XPwzFdRfUS6w.02Corg9TA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTU0MTtjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/lBMfLXwWg6l1q9eR5995VQ--~B/aD00MDk7dz03MjY7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/id/property_guru_indonesia_475/8b6b5671840bd967a180ccd25ac9284d",
    "https://1.bp.blogspot.com/-ktL7fJXm7gQ/YUX1KTpOmlI/AAAAAAAAFIs/-kT9IF-aUMcMMBcoPTRvQSJmwf5EEa9ugCLcBGAsYHQ/w640-h480/rekomendasi%2Bkos%2Bsekitar%2Buniversitas%2Bgunadarma.jpg",
    "https://cdn.idntimes.com/content-images/post/20160504/bp-hucoh107-after-bedroom-hidden-bed-4x3jpgrendhgtvcom1280853-c310e21b1005090030e4ea7081983695.jpeg",
    "https://cdn.idntimes.com/content-images/post/20160504/mietankowa-biel7-1646f1b8d1b0866cc2490b24445257b8.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 245, 4),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome Juragan Kosan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Silahkan Cek Kosanmu di Sini",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color.fromARGB(83, 222, 247, 2),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Cari Kosan",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Premium",
                        ),
                        Tab(
                          text: "Standart",
                        ),
                        Tab(
                          text: "Ekonomi",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card

                                travelCard(
                                    urls[0], "Luxary Kost", "Banyuwangi", 3),
                                travelCard(
                                    urls[1], "Plaza Kost", "Rogojampi", 4),
                                travelCard(
                                    urls[2], "Safari Kost", "Tegalsari", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(
                                    urls[3], "Standart room", "Pulau merah", 4),
                                travelCard(
                                    urls[4], "Standart room", "Kalibaru", 4),
                                travelCard(
                                    urls[5], "Standart room", "Genteng", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(urls[6], "Ekonomi", "Kalibaru", 4),
                                travelCard(urls[7], "Ekonomi", "Genteng", 6),
                                travelCard(urls[8], "Ekonomi", "Jajag", 6),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
