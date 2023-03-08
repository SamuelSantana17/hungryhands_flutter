import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungryhands_flutter/palatte.dart';
import 'package:hungryhands_flutter/screens/home_screen.dart';
import 'package:hungryhands_flutter/widgets/text-input-email-password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Column(
            children: [
              Text(
                "Hungry Hands",
                style: GoogleFonts.lemon(textStyle: kHeaderText),
              ),
              Text(
                "Restaurant Admin",
                style: GoogleFonts.lemon(textStyle: kBodyText),
              ),
              SizedBox(
                height: 30,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    //Restaurant Email
                    resuableTextFieldEP("Restaurant Email",
                        FontAwesomeIcons.envelope, false, _emailTextController),
                    //Spacer
                    SizedBox(height: 20),
                    //Restaurant ID
                    resuableTextFieldEP(
                        "Restaurant ID",
                        FontAwesomeIcons.utensils,
                        true,
                        _passwordTextController),
                    //Spacer
                    SizedBox(height: 20),
                    //Login Button
                    loginSignupButton(context, true, () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      });
                    })
                  ], //children list
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}
