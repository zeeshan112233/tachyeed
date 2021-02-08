import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class advertisement extends StatefulWidget {
  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<advertisement> {
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
                      onTap: () => Navigator.pop(context, ),
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
                          "Advertisement",
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
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenwidth * 0.05),
                      child: Container(
                        height: screenheight * 0.1,
                        width: screenwidth * 0.86,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenheight * 0.06,
                                width: screenheight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xFFFFCD15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage("images/iconuser.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xyz Corporation",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenwidth * 0.02,
                                ),
                                Text(
                                  "Specialise in construction",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: AssetImage("images/messageicon.png",),width: screenheight*0.03,
                                  ),
                                  Image(
                                    image: AssetImage("images/callicon.png",),width: screenheight*0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),



                    
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
