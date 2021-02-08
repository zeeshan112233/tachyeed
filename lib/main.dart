import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tachyeed/Ui/GettingStarted.dart';
import 'package:tachyeed/Ui/GettingStartedCompany.dart';
import 'package:tachyeed/Ui/Otpauthentication.dart';
import 'package:tachyeed/Ui/Passwordrecovery.dart';
import 'package:tachyeed/Ui/aboutapp.dart';
import 'package:tachyeed/Ui/advertisement.dart';
import 'package:tachyeed/Ui/files.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:tachyeed/Ui/login.dart';
import 'package:tachyeed/Ui/notification.dart';
import 'package:tachyeed/Ui/ParadiseBeautySalon.dart';
import 'package:tachyeed/Ui/ProviderScreen.dart';
import 'package:tachyeed/Ui/ResetPassword.dart';
import 'package:tachyeed/Ui/Servicesscreen.dart';
import 'package:tachyeed/Ui/Verifyidentity.dart';
import 'package:tachyeed/Ui/home_2.dart';
import 'package:tachyeed/Ui/login.dart';
import 'package:tachyeed/Ui/packages.dart';
import 'package:tachyeed/Ui/people.dart';
import 'package:tachyeed/Ui/projects.dart';
import 'package:tachyeed/Ui/tasks1.dart';
import 'package:tachyeed/Ui/verificationSuccess.dart';
import 'package:tachyeed/redux/model/app_state.dart';
import 'package:tachyeed/redux/reducers.dart';
import 'package:tachyeed/widgets/Serviceswidget.dart';
import 'package:redux/redux.dart';
import 'package:tachyeed/Ui/Checkout.dart';
import 'package:tachyeed/Ui/Calender.dart';

import 'Ui/photos.dart';
import 'Ui/tabs.dart';

void main() {
  final _initialState = Appstate();
  final Store<Appstate> _store =
      Store<Appstate>(reducer, initialState: _initialState);

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<Appstate> store;
  MyApp({this.store});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<Appstate>(
      store: store,
      child: MaterialApp(
        title: "Welcome",
        home: new SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Image.asset(
            'images/splash.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ));
  }
}
