import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/advertisement.dart';
import 'package:tachyeed/Ui/files.dart';
import 'package:tachyeed/Ui/packages.dart';
import 'package:tachyeed/Ui/people.dart';
import 'package:tachyeed/Ui/photos.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

//New Class
class mynav extends StatefulWidget {
  @override
  _mynavState createState() => _mynavState();
}

class _mynavState extends State<mynav> {
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return new Material(
      color: Colors.green,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: screenwidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Color(0xFFFFCD15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenwidth * 0.04, top: screenheight * 0.02),
                      child: Row(
                        children: [
                          TouchableOpacity(
                      onTap: () => Navigator.pop(context, ),

                            child: Image(
                              image: AssetImage("images/backicon.png"),
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("images/navicon.png"),
                            width: screenheight * 0.13,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(
                          "Jubayer kawsar",
                          style: new TextStyle(
                              fontSize: screenheight * 0.03,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(
                          "jubayerkawsar97@gmail.com",
                          style: new TextStyle(
                              fontSize: screenheight * 0.03,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => packages()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/plans.png"),
                                width: 30,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Plans",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                                            TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => advertisement()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/addicon.png"),
                                width: 20,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Advertisements",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => photos()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/photos.png"),
                                width: 30,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Photos",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => people()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/peoples.png"),
                                width: 30,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "People",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: screenwidth * 0.08,
                      //       right: screenwidth * 0.13),
                      //   child: new Divider(
                      //     color: Colors.black,
                      //   ),
                      // ),
                      // TouchableOpacity(
                      //   onTap: () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => packages()),
                      //   ),
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //         left: screenwidth * 0.1,
                      //         right: screenwidth * 0.17,
                      //         top: screenheight * 0.02),
                      //     child: Row(
                      //       children: [
                      //         Image(
                      //           image: AssetImage("images/tasks.png"),
                      //           width: 25,
                      //         ),
                      //         SizedBox(
                      //           width: screenwidth * 0.07,
                      //         ),
                      //         new Text(
                      //           "Tasks",
                      //           style: new TextStyle(
                      //               fontSize: screenheight * 0.03,
                      //               fontWeight: FontWeight.w500),
                      //         ),
                      //         Spacer(),
                      //         Image(
                      //           image: AssetImage("images/nexts.png"),
                      //           width: 30,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: screenheight * 0.01,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mynav()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/languages.png"),
                                width: 30,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Languages",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => files()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/tasks.png"),
                                width: 25,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Files",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),
                      TouchableOpacity(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => packages()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenwidth * 0.1,
                              right: screenwidth * 0.17,
                              top: screenheight * 0.02),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("images/logout.png"),
                                width: 30,
                              ),
                              SizedBox(
                                width: screenwidth * 0.07,
                              ),
                              new Text(
                                "Logout",
                                style: new TextStyle(
                                    fontSize: screenheight * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image(
                                image: AssetImage("images/nexts.png"),
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwidth * 0.08,
                            right: screenwidth * 0.13),
                        child: new Divider(
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
