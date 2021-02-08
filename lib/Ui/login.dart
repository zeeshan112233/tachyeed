import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tachyeed/APIs/loginAPI.dart';
import 'package:tachyeed/Buttons.dart';
import 'package:tachyeed/Ui/GettingStarted.dart';
import 'package:tachyeed/Ui/Otpauthentication.dart';
import 'package:tachyeed/Ui/Profile.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:tachyeed/redux/actions.dart';
import 'package:tachyeed/redux/model/app_state.dart';
import 'package:tachyeed/widgets/TF.dart';
import 'package:tachyeed/widgets/ButtonsWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

//New Class
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool isloading = false;
  bool passwordvalid = true;

  //password textfield
  final TextEditingController _passwordcontroller = new TextEditingController();

  final TextEditingController _emailcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          child: Container(
            height: screenheight,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text("Sign In", style: TextStyle(fontSize: 24)),
                  SizedBox(height: 20),
                  Text(
                    "Hi there, Nice to see you again !",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                        ),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                            hintText: "jubayerkawsar97@gmail.com",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                        ),
                        child: Text("Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                              hintText: "********",
                              suffixIcon: Icon(Icons.remove_red_eye_rounded)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  !isloading
                      ? FlatButton(
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
                                  builder: (context) => GettingStarted(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 120.0),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        )

                      // PinkButtons(
                      //     Buttontext: "SIGN IN",
                      //     TextColor: Colors.white,
                      //     onpress: () => {
                      //           if (_emailcontroller.text.length <= 7)
                      //             {
                      //               Fluttertoast.showToast(
                      //                   msg: "Please Enter Email !",
                      //                   toastLength: Toast.LENGTH_SHORT,
                      //                   gravity: ToastGravity.BOTTOM,
                      //                   timeInSecForIosWeb: 1,
                      //                   backgroundColor: Colors.red,
                      //                   textColor: Colors.white,
                      //                   fontSize: 16.0),
                      //             }
                      //           else if (_passwordcontroller.text.length < 6)
                      //             {
                      //               Fluttertoast.showToast(
                      //                   msg: "Password must be greater then 8",
                      //                   toastLength: Toast.LENGTH_SHORT,
                      //                   gravity: ToastGravity.BOTTOM,
                      //                   timeInSecForIosWeb: 1,
                      //                   backgroundColor: Colors.red,
                      //                   textColor: Colors.white,
                      //                   fontSize: 16.0),
                      //             }
                      //           else
                      //             {
                      //               setState(() {
                      //                 isloading = true;
                      //               }),
                      //               Login()
                      //                   .login(
                      //                       password: _passwordcontroller.text,
                      //                       phonenumber: _emailcontroller.text)
                      //                   .then((value) => {
                      //                         if (value.firstName != null)
                      //                           {
                      //                             setState(() {
                      //                               isloading = false;
                      //                             }),
                      //                             StoreProvider.of<Appstate>(
                      //                                     context)
                      //                                 .dispatch(MyUser(value)),
                      //                             print(value),
                      //                             Fluttertoast.showToast(
                      //                                 msg:
                      //                                     'Login Successfull with username : ' +
                      //                                         value.firstName
                      //                                             .toString()),
                      //                             Navigator.push(
                      //                               context,
                      //                               MaterialPageRoute(
                      //                                   builder: (context) =>
                      //                                       home_2()),
                      //                             )
                      //                           }
                      //                         else
                      //                           {
                      //                             setState(() {
                      //                               isloading = false;
                      //                             }),
                      //                             Fluttertoast.showToast(
                      //                                 msg: 'Failed to login ')
                      //                           },
                      //                         print(value.toString()),
                      //                       })
                      //             },
                      //         })
                      : Container(
                          // child: Center(
                          //   child: Image.asset(
                          //     'images/V2-White-BG.gif',
                          //     width: MediaQuery.of(context).size.width * 0.5,
                          //     height: MediaQuery.of(context).size.height * 0.09,
                          //   ),
                          // ),
                          ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Sign Up ",
                          style: TextStyle(
                              color: Color(0xFFFFCD15),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
