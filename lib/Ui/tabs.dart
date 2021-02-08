import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/advertisement.dart';
import 'package:tachyeed/Ui/mynav.dart';
import 'package:tachyeed/Ui/people.dart';
import 'package:tachyeed/Ui/photos.dart';
import 'package:tachyeed/Ui/projects.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

//New Class
class tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;

    return new Material(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      children: [
                        TouchableOpacity(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mynav()),
                          ),
                          child: Image(
                            image: AssetImage("images/menuicon.png"),
                            width: 25,
                          ),
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage("images/searchicon.png"),
                          width: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage("images/notificationicon.png"),
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TouchableOpacity(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => projects()),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenwidth * 0.87,
                          height: screenheight * 0.15,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCD15),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("images/projects.png"),
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                new Text(
                                  "Projects",
                                  style: new TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Image(
                                  image: AssetImage("images/next.png"),
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TouchableOpacity(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => people()),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenwidth * 0.87,
                          height: screenheight * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("images/people.png"),
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                new Text(
                                  "People",
                                  style: new TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Image(
                                  image: AssetImage("images/next.png"),
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TouchableOpacity(
                                          onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => photos()),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenwidth * 0.87,
                          height: screenheight * 0.15,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCD15),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("images/task.png"),
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                new Text(
                                  "Photos",
                                  style: new TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Image(
                                  image: AssetImage("images/next.png"),
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TouchableOpacity(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => advertisement()),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenwidth * 0.87,
                          height: screenheight * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("images/add.png"),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                new Text(
                                  "Advertisement",
                                  style: new TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Image(
                                  image: AssetImage("images/next.png"),
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
