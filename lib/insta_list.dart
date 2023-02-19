import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/insta_stories.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.17,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //1st row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "imsymy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),

                //2nd row
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                      "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      fit: BoxFit.cover),
                ),

                //3rd row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Icon(
                        FontAwesomeIcons.heart,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        FontAwesomeIcons.comment,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        FontAwesomeIcons.paperPlane,
                      ),
                    ],
                  ),
                  //const Icon(FontAwesomeIcons.bookmark),
                ),

                //4th row
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by pawankumar, pk and 528,331 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                //5th row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //6th row
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "1 day ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
    );
  }
}
