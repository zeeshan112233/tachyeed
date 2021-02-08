import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:tachyeed/Ui/mynav.dart';
import 'package:tachyeed/Ui/tabs.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class projects extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<projects> {
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
                          "Projects",
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
            Container(
              width: screenwidth * 0.9,
              height: screenheight * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFCD15),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenwidth * 0.03,
                    vertical: screenheight * 0.01),
                child: Row(
                  children: [
                    Expanded(
                        child: TouchableOpacity(
                      onTap: () {
                        setState(() {
                          activeSelected = true;
                          completedSelected = false;
                        });
                      },
                      child: Container(
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              activeSelected ? Colors.white : Color(0xFFFFCD15),
                        ),
                        child: Center(
                          child: Text(
                            "Active Projects",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: TouchableOpacity(
                      onTap: () {
                        setState(() {
                          activeSelected = false;
                          completedSelected = true;
                        });
                      },
                      child: Container(
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: completedSelected
                              ? Colors.white
                              : Color(0xFFFFCD15),
                        ),
                        child: Center(
                          child: Text(
                            "Completed Projects",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55.0, vertical: 7),
                        child: Column(
                          children: [
                            Text(
                              "Project 1 ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                              image: AssetImage("images/project.png"),
                              width: screenwidth * 0.35,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55.0, vertical: 7),
                        child: Column(
                          children: [
                            Text(
                              "Project 2 ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                              image: AssetImage("images/project.png"),
                              width: screenwidth * 0.35,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400],
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55.0, vertical: 7),
                        child: Column(
                          children: [
                            Text(
                              "Project 3 ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                              image: AssetImage("images/project.png"),
                              width: screenwidth * 0.35,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
