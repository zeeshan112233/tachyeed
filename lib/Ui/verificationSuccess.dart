import 'package:flutter/material.dart';
import 'package:tachyeed/Ui/tabs.dart';

//New Class
class verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return new Material(
      color: Colors.green,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(screenheight * 0.07),
                child: Image(
                  image: AssetImage("images/tachyeedlogo.png"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(screenheight * 0.12),
                child: Image(
                  image: AssetImage("images/tick.png"),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                textColor: Colors.black,
                padding: EdgeInsets.zero,
                color: Color(0xFFFFCD15),
                splashColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // onPressed: onpress,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tabs(),
                      ));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 120.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
