import 'package:code_girls_demo/shared/custom_song_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> songNames = ["Dancing", "Hello", "Abc", "ghhhhoooo"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.3),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Find in liked songs",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.green)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey.withOpacity(0.3),
                            padding: EdgeInsets.symmetric(vertical: 16)),
                        onPressed: () {},
                        child: Text(
                          "Sort",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Liked Songs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "106 Songs",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green[800], shape: BoxShape.circle),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 34,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: Icon(
                              Icons.shuffle,
                              color: Colors.green,
                              size: 16,
                            )),
                      )
                    ],
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: songNames.length,
                itemBuilder: (_, i) {
                  print(songNames[i] + "--- " + i.toString());
                  return CustomSongTile(
                    currentSongName: songNames[i],
                  );
                },
              )

              // ListView(
              //   shrinkWrap: true,
              //   primary: true,
              //   children: [
              //     CustomSongTile(),
              //     CustomSongTile(),
              //     CustomSongTile(),
              //   ],
              // )
            ]),
          ),
        ));
  }
}
