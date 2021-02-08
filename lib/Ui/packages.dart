import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class packages extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<packages> {
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
                          "Packages",
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
            SizedBox(
              height: screenheight * 0.07,
            ),
            Container(
              width: screenwidth * 0.7,
              height: screenheight * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xFFFFCD15),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenheight * 0.04),
                  child: Container(
                    width: screenwidth * 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Basic",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            "\$ 9.99",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color(0xFFFFCD15),
                            ),
                          ),
                        ),
                        Text(
                          "Per Month",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.all(screenheight * 0.04),
                          child: Image(
                            image: AssetImage("images/group.png"),
                            width: screenheight * 0.05,
                          ),
                        ),
                        FlatButton(
                          textColor: Color(0xFFFFCD15),
                          color: Colors.black,
                          splashColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
