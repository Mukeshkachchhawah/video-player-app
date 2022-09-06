import 'package:flutter/material.dart';

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 13, 11, 102),
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child:
                // add image cros Slider animation ant outo silder
                ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.network(
                  'https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2022/04/24121055/Featured_MostAnticipatedMovies2022_Thor.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtPTBRxwqQ283xAfvE8RCiNt_oPsHDNJda4Q&usqp=CAU',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'http://static-mag.itcher.com/mag/wp-content/uploads/2015/06/Lord-of-the-Rings-1024x512.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/match.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/janat meri.webp',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Release Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // New Release Video Bloack
          newrelease(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Coming Soon Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // New Coming Soon Video Bloack
          comingsoon(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Bollwoed Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // New Boliwoed Video Bloack
          boliwoed(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Holiwoed Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Holiwoed(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Les't Episode",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          new_episode(),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Trading English Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          tradingenglish(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Trading Hindi Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          tradingHindi(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Cartoons Movie",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Popular_Video(),
          SizedBox(
            height: 20,
          ),
          // New Games Video Bloack
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Games Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Games(),
          SizedBox(
            height: 15,
          )
        ])));
  }

// try to Listview.builder add to container image but not respost the output is
  /* Widget newrelease() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
              itemCount: _imageUrl.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 250,
                  width: 200,
                  child: const Center(child: Text('Entry B')),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(assetName))
                  ),
                );
              })),
    );
  } */

  Widget Games() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://imgk.timesnownews.com/story/PUBG-cover-image_0.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://imgk.timesnownews.com/story/Call-of-duty-mobile-poster.jpg?tr=w-400,h-300,fo-auto"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://casino-testing.com/wp-content/uploads/2021/10/1070222-1.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://play-lh.googleusercontent.com/c18dnPx8Qm-WIfdWoG4ZRmD1P2-cwFPwSY9-dsNHBBPs_o5kV4qg-3yrj8shXVXQrWE"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.cnet.com/a/img/resize/fdf2f990e6c74275217394931fb306ad48de48bf/2019/09/12/eaac19f0-c3d1-4f99-b32c-f23c3ae9dcaa/sonic.jpg?auto=webp&fit=crop&height=675&width=1200"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s3.amazonaws.com/culga-games-images/uploads/images/penalty-challenge.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://staticg.sportskeeda.com/editor/2020/04/11745-15871611317419-800.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.indianexpress.com/2021/12/7-Games-like-Animal-Crossing-featured-1.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.pcgamesn.com/wp-content/uploads/2018/12/PUBG_Vikendi_gameplay-550x309.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/hRw2JhM1IvE/maxresdefault.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget Popular_Video() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.bauerhosting.com/legacy/media/6140/b515/4699/e01c/48f2/7735/inside-out-main2.jpg?q=80&w=440&ar=16:9&fit=crop&crop=top"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-animated-movie-0005-inside-out-disney-1531165701.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.edsys.in/wp-content/uploads/16-10-2018_12-inspirational-animated-movies-for-students-1.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/550x/16/01/26/160126b35dc6687fde1af5a1786cb02a.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/XnuDetmX9lU/maxresdefault.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://d.newsweek.com/en/full/1787416/mitchells-vs-machines.jpg?w=1600&h=1600&q=88&f=d470e9bca117b92f0c66863606274a03"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://animationsongs.com/wp-content/uploads/2021/08/Paw-Patrol-The-Movie-List-Of-All-Songs-From-2021-Spin-Master-Movie-Official-Soundtrack.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.currentschoolnews.com/wp-content/uploads/2022/02/flatten-1.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/Pnp0upDOn6E/maxresdefault.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.hollywoodinsider.com/wp-content/uploads/2022/08/The-Hollywood-Insider-Shrek-Success-Pop-Culture-Dreamworks.png"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget tradingHindi() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images004-a.erosnow.com/movie/8/1000378/img145210/6984260/1000378_6984260.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://qqcdnpictest.mxplay.com/pic/4427b696f812fbf4aadc14559f8995fc/en/2x3/320x480/4b278501b4080f45f01a07d5ba8f99a1_1280x1920.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://qqcdnpictest.mxplay.com/pic/452b1863d450b2bb76aeb9dff933db82/en/2x3/320x480/509de1e1cf9157c15a9ea442f34446bb_1280x1920.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-103561/portrait/bindihi1920x770.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/f/f4/Mimi_2021_Hindi_poster.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://1.bp.blogspot.com/-Du7MX1-gseM/X_SwXWWyGgI/AAAAAAAAACM/KENR48rZK9QX99EO902EuXyFXF4S4oFYQCNcBGAsYHQ/w1200-h630-p-k-no-nu/Wanted7.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-2481/portrait/002481cover31066131.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://qqcdnpictest.mxplay.com/pic/0824b942cecba2886443004138a8e860/en/2x3/320x480/b73fa454b62777d915a0f9271b92f1fa_1280x1920.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Genius_official_poster.jpg/220px-Genius_official_poster.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://timesofindia.indiatimes.com/photo/61979945.cms"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget tradingenglish() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/9XxS6_uPR_4/maxresdefault.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://stat1.bollywoodhungama.in/wp-content/uploads/2022/08/Siya-306x393.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://image.tmdb.org/t/p/original/dWYGHG6yIG8Fh8LwhbGnnaYNYyX.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://m.media-amazon.com/images/M/MV5BOWY1NjE2MzUtYTVjOC00ZDUxLWIwZDUtMzk5YWQ5ODc5YTI5XkEyXkFqcGdeQXVyMTI1NDEyNTM5._V1_QL75_UY281_CR46,0,190,281_.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://1.bp.blogspot.com/-dVsLW7hCz80/XeqDreIp9oI/AAAAAAAAAl4/XUfgkaLlcDorI_XgNDUXWmJjWp8bS5sfQCLcBGAsYHQ/s400/War-2019.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://m.shareimage.pics/?img=181661757203.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://aniportalimages.s3.amazonaws.com/media/details/5fdDA5XkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/90/bc/af/90bcaf70186ec4ce8e502aba6c14c6b9.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/80/8b/34/808b344284fd6ff306bae8216f7f5e9e.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://inextmovies.xyz/wp-content/uploads/2021/10/ArmyOfThievesTeaserPoster.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget new_episode() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.indiantvinfo.com/media/2022/05/Anupamaa-High-TRP-Hindi-Serial.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.tellyupdates.com/wp-content/uploads/2022/01/Yeh-Rishta-Kya-Kehlata-Hai.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://bollywoodhush.com/wp-content/uploads/2022/04/Spy-Bahu.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://starsunfolded.com/wp-content/uploads/2022/08/Sanjog.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://sarkarilatestnews.com/wp-content/uploads/2022/01/Yeh-Hai-Chahatein-16th-January-2022-Written-Episode-Update-in-hindi.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://netstorage-tuko.akamaized.net/images/a030e9a59f19b1d8.jpg?imwidth=900"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://rskg.in/wp-content/uploads/2022/06/Parineeti.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i0.wp.com/auditionsnews.com/wp-content/uploads/2020/09/kumkum-bhagya-aaj-ka-episode.jpg?resize=800%2C491&ssl=1&is-pending-load=1"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://nettv4u.com/imagine/19-07-2019/radhakrishn.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://1.bp.blogspot.com/-5YfJs5sPfgU/Xm4w4cwLJeI/AAAAAAAAZck/-vBoPO6juJo9v8xPZ05U6YTLZUftBQhSQCLcBGAsYHQ/w1200-h630-p-k-no-nu/Naagin-TV-Series.png"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget Holiwoed() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.scrolldroll.com/wp-content/uploads/2022/04/Doctor-strange-Hollywood-movies-releasing-in-may-2022.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/e/ee/TheLostCityPoster.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.bollymoviereviewz.com/wp-content/uploads/2013/05/Operation_Fortune.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.gadgets360cdn.com/pricee/assets/product/202205/jurassic_world_dominion_poster_1652087377.jpeg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.bollymoviereviewz.com/wp-content/uploads/2013/05/330px-Fantastic_Beasts2C_The_Secrets_of_Dumbledore_teaser_poster.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.naijaprey.com/wp-content/uploads/2022/02/A-Fairy-Tale-After-All.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.naijaprey.com/wp-content/uploads/2022/02/Fistful-Of-Vengeance.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.thefilmik.com/wp-content/uploads/2022/02/THe-Flash-Movie-.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://m.timesofindia.com/thumb.cms?msid=92238059&width=200&height=281"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i0.wp.com/hdmoviesvala.com/wp-content/uploads/2022/03/images-1-18.webp?fit=495%2C619&ssl=1"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget boliwoed() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://rdxhd.okjatt.ink/movies/cover/Jug%20Jugg%20Jeeyo%202022%20Hindi.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.bollywoodmdb.com/fit-in/movies/largethumb/2021/pushpa/poster.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://image.scoopwhoop.com/q30/s3.scoopwhoop.com/anj2/5cb6c32cd0aa3850a6a6b18c/6ebc7a53-c5ac-4f1e-b2e5-488064d2ce40.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.bollywoodmdb.com/fit-in/cover/152x202/16703_raksha-bandhan_cover.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://pbs.twimg.com/media/EW0hmeeVcAAEheR.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://image.scoopwhoop.com/q30/s4.scoopwhoop.com/anj2/5dd3c34850758d6730e4f44f/e5a30ca6-5032-4c7a-ab9b-6b37056e6629.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.filmibeat.com/img/320x100x392/popcorn/trending_news/release-date-locked-for-goodbye-6275-20220903122728.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-1z5156101/portrait/1920x770b428101cf0d84ef697a2b22e172a913b.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://daex9l847wg3n.cloudfront.net/shemoutputimages/Jab-Jab-Phool-Khile/5ba8ce1fa609d26f87000021/medium_2_3_1622047234.jpg?1622051379"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.gadgets360cdn.com/pricee/assets/product/202206/shamshera_poster_1656071785.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget comingsoon() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_2_5x/sources/r1/cms/prod/9942/1279942-v-724d56a723a1"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://source.boomplaymusic.com/buzzgroup2/M00/33/A5/rBEe_GJKlZ6ATWH1AAJ7XF5-lqE348.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.gadgets360cdn.com/pricee/assets/product/202205/Cirkus-New-Poster_1652176101.jpg"),
                      fit: BoxFit.cover)),
              //
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assetscdn1.paytm.com/images/cinema/Spidr-608x800-deeb9600-5b2d-11ec-a600-994b3acb0b07.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://lumiere-a.akamaihd.net/v1/images/p_blackpanther_19754_4ac13f07.jpeg?region=0%2C0%2C540%2C810"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://preview.redd.it/rc0pe9r1w0t71.jpg?auto=webp&s=51819c7382094e9bab17625f549db34d25bd00fe"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://image.scoopwhoop.com/q30/s4.scoopwhoop.com/anj2/61b9b941c582e0000106e342/9b006176-6dd4-4024-a768-145a87795e5c.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://1.bp.blogspot.com/-W8QS0xUeOQ0/YOgVxLwhDPI/AAAAAAAAOpw/9GdbHxJ9hrYtCytWxe2ngho2wCv9f3JcgCLcBGAsYHQ/s1350/Upcoming%2BHindi%2Bfilm%252C%2B%2523BhootPolice%2BMovie%2BPosters%2B%25281%2529.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.rewariyasat.com/h-upload/2022/05/28/30205-liger.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:ote-MjAyMg%3D%3D,ots-29,otc-FFFFFF,oy-612,ox-24:q-80/et00317236-mqgagkucjm-portrait.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget newrelease() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/RRR.webp"), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/adipurush001.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Bhool-Bhulaiya-2.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/brahmastra.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/patan.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/new Movie.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/yodha.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Akshay-Kumar_007.webp"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/siper_man.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ek-villain-returns.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
