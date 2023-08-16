import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: InstagramMainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class InstagramMainPage extends StatefulWidget {
  const InstagramMainPage({super.key});

  @override
  State<InstagramMainPage> createState() => _InstagramMainPageState();
}

class _InstagramMainPageState extends State<InstagramMainPage> {
  List _instaramPosts = [
    'https://images.unsplash.com/photo-1525358004167-bee2ae2de7c1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwcGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542442828-287217bfb87f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1542396601-dca920ea2807?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542397284385-6010376c5337?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542379653-b928db1b4956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542370285-b8eb8317691c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542461927-dd68c85adc56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1679679008383-6f778fe07828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1521109464564-2fa2faa95858?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542480118439-cbba7870f6f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542332213-9b5a5a3fad35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  List _instagramStories = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN6IAvPwm8fcQ_hckIxQOwFIOCXAIZF_5LHw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDUD6pxuuHCde68FcAFK8LRo31EqkJAvlaNg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUekY4GVFg5x6GAlDqlSak5gV0yedmudZ1gg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3UKPML72G93cF3yK2HhMWWSRJ7plNbUu6Rg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZm2ZatubBeYhnkaOyzP49RKwTbB85jO0UA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB84qkq3tcq5SQB-msLM5RU2Mx-W8WSZd78Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5M2j5aP_QleSz2Sb2Qgf-J5UgjP3po54hg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCczoMDFIc77qVeqtnJ26h8Yen0WXNfyLTIg&usqp=CAU',
    // '',
    // '',
    // '',
    // '',
    // '',
    // '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Instagram',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'InstagramFont',
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.heart),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  // icon: Icon(EvaIcons.messageCircleOutline),
                  icon: FaIcon(FontAwesomeIcons.facebookMessenger),
                  color: Colors.black),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                // Stories Scroll container
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        children: _instagramStories.map((storiesImage) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(storiesImage),
                                fit: BoxFit.cover)),
                        // child: Image(image:NetworkImage('assets/profile/hisham.jpg') ),
                      );
                    }).toList()),
                  ),
                ),
              ),

              // posts containers
            ]),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              //Main container holding all the elements of the post
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'username',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/verified.png')))
                                ],
                              ),
                              Text('username.Original audio')
                            ],
                          ),
                        ],
                      ),
                      // color: Colors.brown,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image(
                      image: NetworkImage(_instaramPosts[index]),
                    ),
                  ),
                  IntrinsicHeight(
                    //below the post
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //like comment share
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(EvaIcons.heartOutline),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(EvaIcons.messageCircleOutline),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.paperPlane,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.bookmark_border_outlined),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),

                          //likes and comments
                          Container(
                              child: Column(
                            children: [
                              Text('_likes likes'),
                              Text('Comments'),
                            ],
                          )),

                          // SizedBox(
                          //   height: 10,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }, childCount: _instaramPosts.length))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: ' '),
          BottomNavigationBarItem(icon: Icon(EvaIcons.search), label: ' '),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.plusSquareOutline), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circle), label: 'profile'),
        ],
      ),
    );
  }
}
