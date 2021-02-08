import 'package:flutter/material.dart';
import 'package:tachyeed/APIs/signupApi.dart';
import 'package:tachyeed/Buttons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tachyeed/Ui/Payment.dart';
import 'package:tachyeed/Ui/login.dart';
import 'package:tachyeed/Ui/verificationSuccess.dart';
import 'package:tachyeed/widgets/TF.dart';
import 'package:tachyeed/widgets/ButtonsWidget.dart';

//New Class
class GettingStartedCompany extends StatefulWidget {
  @override
  GettingStartedState createState() => GettingStartedState();
}

class GettingStartedState extends State<GettingStartedCompany> {
  String gender = 'M';
  int radioValue2 = 0;
  String providertype = "company";

  bool rememberMe = false;
  bool valid = true;
  bool isloading = false;

  //confirmpassword textfield
  final TextEditingController _confirmpasswordcontroller =
      new TextEditingController();

  final TextEditingController _emailcontroller = new TextEditingController();
  double _finalresult = 0.0;
  //firstname textfield
  final TextEditingController _firstnamecontroller =
      new TextEditingController();

  String _formattedtext = "";
  //lastname textfield
  final TextEditingController _lastnamecontroller = new TextEditingController();

  //password textfield
  final TextEditingController _passwordcontroller = new TextEditingController();

  //phone no textfield
  final TextEditingController _phonenocontroller = new TextEditingController();

  // final TextEditingController _phonenocontroller = new TextEditingController();

  void handleRadioValue2Changed(int value) {
    setState(() {
      radioValue2 = value;
      switch (radioValue2) {
        case 0:
          providertype = "company";
          break;

        case 1:
          providertype = "private";
          break;
      }
    });
    print(providertype);
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    //print(_usercontroller);
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Text(
                  "Company Sign Up ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.04,
                            ),
                            child: Text("Company Name"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: _emailcontroller,
                              decoration: InputDecoration(
                                hintText: "Jubayer Ahmed",
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
                            child: Text("Phone"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: _emailcontroller,
                              decoration: InputDecoration(
                                hintText: "+8801710210246",
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
                            child: Text("Upload Documents"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: _passwordcontroller,
                              decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.cloud_upload_outlined)),
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
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_rounded)),
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
                            child: Text("Confirm Password"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: _passwordcontroller,
                              decoration: InputDecoration(
                                  hintText: "********",
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_rounded)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Radio<int>(
                        activeColor: Color(0xFFFFCD15),
                        value: 0,
                        groupValue: radioValue2,
                        onChanged: handleRadioValue2Changed),
                    new Text(
                      "Company",
                      style: new TextStyle(color: Colors.black),
                    ),
                    new Radio<int>(
                        activeColor: Color(0xFFFFCD15),
                        value: 1,
                        groupValue: radioValue2,
                        onChanged: handleRadioValue2Changed),
                    new Text(
                      "Consultant",
                      style: new TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
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
                        onPressed: () { Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => verification(),
          ));},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 120.0),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      )
                    : Container(),

                // !isloading
                //     ? PinkButtons(
                //         TextColor: Colors.white,
                //         Buttontext: "SIGN UP",
                //         onpress: () => {
                //           if (_firstnamecontroller.text.isEmpty)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "First name cannot be Empty",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
                //                   timeInSecForIosWeb: 1,
                //                   backgroundColor: Colors.red,
                //                   textColor: Colors.white,
                //                   fontSize: 16.0),
                //             }
                //           else if (_lastnamecontroller.text.isEmpty)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "Last name cannot be Empty",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
                //                   timeInSecForIosWeb: 1,
                //                   backgroundColor: Colors.red,
                //                   textColor: Colors.white,
                //                   fontSize: 16.0),
                //             }
                //           else if (_phonenocontroller.text.isEmpty)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "Please Enter valid Phone number",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
                //                   timeInSecForIosWeb: 1,
                //                   backgroundColor: Colors.red,
                //                   textColor: Colors.white,
                //                   fontSize: 16.0),
                //             }
                //           else if (_passwordcontroller.text.length < 8)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "Password must be greater then 8",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
                //                   timeInSecForIosWeb: 1,
                //                   backgroundColor: Colors.red,
                //                   textColor: Colors.white,
                //                   fontSize: 16.0),
                //             }
                //           else if (_passwordcontroller.text !=
                //               _confirmpasswordcontroller.text)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "Passwords donot Match",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
                //                   timeInSecForIosWeb: 1,
                //                   backgroundColor: Colors.red,
                //                   textColor: Colors.white,
                //                   fontSize: 16.0),
                //             }
                //           else if (_passwordcontroller.text !=
                //               _confirmpasswordcontroller.text)
                //             {
                //               Fluttertoast.showToast(
                //                   msg: "Passwords donot Match",
                //                   toastLength: Toast.LENGTH_SHORT,
                //                   gravity: ToastGravity.CENTER,
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
                //               Signup()
                //                   .signup(
                //                       firstName: _firstnamecontroller.text,
                //                       lastName: _lastnamecontroller.text,
                //                       email: _emailcontroller.text,
                //                       gender: this.gender,
                //                       password: _passwordcontroller.text,
                //                       phonenumber: _phonenocontroller.text)
                //                   .then((value) => {
                //                             if (value.firstName != null)
                //                               {
                //                                 setState(() {
                //                                   isloading = false;
                //                                 }),
                //                                 // StoreProvider.of<Appstate>(context)
                //                                 //     .dispatch(MyUser(value.user)),
                //                                 print(value),
                //                                 Fluttertoast.showToast(
                //                                     msg:
                //                                         'Sign up Successfull with username : ' +
                //                                             value.firstName
                //                                                 .toString()),

                //                                 Navigator.push(
                //                                   context,
                //                                   MaterialPageRoute(
                //                                       builder: (context) =>
                //                                           login()),
                //                                 )
                //                               }
                //                             else
                //                               {
                //                                 setState(() {
                //                                   isloading = false;
                //                                 }),
                //                                 Fluttertoast.showToast(
                //                                     msg: 'Failed to signup ')
                //                               },
                //                             print(value.toString()),
                //                           }

                //                       // Navigator.push(
                //                       //   context,
                //                       //   MaterialPageRoute(
                //                       //       builder: (context) => Otpauthentication()),
                //                       // )
                //                       )
                //             },

                // print(_firstnamecontroller.text.length),
                // print(_lastnamecontroller.text),
                // print(_passwordcontroller.text),

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => login()),
                // )
                //},
                //)
                // : Container(
                //     child: Center(
                //       child: Image.asset(
                //         'images/V2-White-BG.gif',
                //         width: MediaQuery.of(context).size.width * 0.15,
                //         height: MediaQuery.of(context).size.height * 0.15,
                //       ),
                //     ),
                //   ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
