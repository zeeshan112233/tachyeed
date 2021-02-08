import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:tachyeed/Ui/mynav.dart';
import 'package:tachyeed/Ui/tabs.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class tasks1 extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<tasks1> {
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
                          "Tasks",
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
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Start Basement",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
