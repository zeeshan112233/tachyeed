import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class photos extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<photos> {
  bool photoSelected = true;
  bool folderSelected = false;
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
                          "Photos",
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
                          photoSelected = true;
                          folderSelected = false;
                        });
                      },
                      child: Container(
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              photoSelected ? Colors.white : Color(0xFFFFCD15),
                        ),
                        child: Center(
                          child: Text(
                            "All Photos ",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: TouchableOpacity(
                      onTap: () {
                        setState(() {
                          photoSelected = false;
                          folderSelected = true;
                        });
                      },
                      child: Container(
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              folderSelected ? Colors.white : Color(0xFFFFCD15),
                        ),
                        child: Center(
                          child: Text(
                            "Folders",
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
                  child: photoSelected
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "1 December 2020",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage("images/photo1.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenwidth * 0.02,
                                  ),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage("images/photo2.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage("images/photo3.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenwidth * 0.02,
                                  ),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage("images/photo4.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "1 December 2020",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    height: screenheight * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Color(0xFFFFCD15),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "My Folder",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )),
                                  SizedBox(
                                    width: screenwidth * 0.02,
                                  ),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.black,
                                    ),
                                    height: screenheight * 0.2,
                                    child: Center(
                                      child: Text(
                                        "Favoutites",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "7 December 2020",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: screenheight * 0.2,
                                    width: screenwidth * 0.45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Color(0xFFFFCD15),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Recent",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
