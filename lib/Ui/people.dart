import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class people extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<people> {
  bool activeSelected = true;
  bool completedSelected = false;
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: screenwidth,
              height: screenheight * 0.1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 0),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                      ),
                      child: Image(
                        image: AssetImage("images/backicon.png"),
                        width: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "People",
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheight * 0.02,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.07),
                      child: Text(
                        "Admin",
                        style: TextStyle(
                            fontSize: screenheight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/james.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "James Anderson",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/jubair.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jubayer Ahmed",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/anderson.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "James Anderson",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.02,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.07),
                      child: Text(
                        "Member",
                        style: TextStyle(
                            fontSize: screenheight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/jubair.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jubayer Ahmed",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/anderson.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "James Anderson",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.02,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.07),
                      child: Text(
                        "Flower",
                        style: TextStyle(
                            fontSize: screenheight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/james.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "James Anderson",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/jubair.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jubayer Ahmed",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/anderson.png"),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "James Anderson",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.037,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.0,
                                ),
                                Text(
                                  "Fieldwire",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFFFCD15),
      ),
    );
  }
}
