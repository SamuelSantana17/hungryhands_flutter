import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungry_hands/palette.dart';
import 'package:hungry_hands/screens/home_screen.dart';
import 'package:hungry_hands/services/firebase_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.black,
            Colors.white,
            Colors.red,
          ])),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hungry Hands",
            style: GoogleFonts.lemon(textStyle: kHeaderText),
          ),
          Text(
            "Food App",
            style: GoogleFonts.lemon(textStyle: kBodyText),
          ),

          //add more login and sign up options, maybe ?
          Container(
            //alignment: AlignmentDirectional.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black26;
                }
                return Colors.white;
              })),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("images/google.png"),
                      height: 40,
                      width: 40,
                      // image: Null,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Login with Gmail",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      //),
      // ],
      //  ),

      //  ),
      //  ],
      // ),
    );
  }
}
       
     
 



















  // body: Center(
  //   child: ElevatedButton(
  //       child: const Text('Go to HomePage'),
  //       onPressed: () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => HomeScreen()),
  //         );
  //       }),
  // ),

//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // final GoogleSignIn _googleSignIn = GoogleSignIn();

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Scaffold(
//           backgroundColor: Colors.white,
//           body: SafeArea(
//               child: Column(
//             children: [
//               Text(
//                 "Hungry Hands",
//                 style: GoogleFonts.lemon(textStyle: kHeaderText),
//               ),
//               Text(
//                 "Food App",
//                 style: GoogleFonts.lemon(textStyle: kBodyText),
//               ),
//               SizedBox(
//                 height: 150,
//               ),
//               // ignore: avoid_unnecessary_containers
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     //Restaurant Email
//                     resuableTextFieldEP(" Email", FontAwesomeIcons.envelope,
//                         false, _emailTextController),
//                     // Spacer
//                     SizedBox(height: 20),
//                     // Restaurant ID
//                     resuableTextFieldEP("Password", FontAwesomeIcons.utensils,
//                         true, _passwordTextController),
//                     // Spacer
//                     SizedBox(height: 100),
//                     //Login Button
//                     loginSignupButton(context, true, () {
//                       FirebaseAuth.instance
//                           .signInWithEmailAndPassword(
//                               email: _emailTextController.text,
//                               password: _passwordTextController.text)
//                           .then((value) {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => HomeScreen()));
//                       });
//                     }),
//                     ElevatedButton(
//                       onPressed: () {
//                         // async{
//                         //               signInWithGoogle(model).then((firebaseUser user){
//                         //                 model.clearAllModels();
//                         //                 Navigator.of(context).pushNamedAndRemoveUntilWidget(RouteName.HomeScreen(),(Route<dynamic> route)=>false);
//                         //               }).catchError((e) => print(e));

//                         //             };

//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => SignupScreen()));
//                       },
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.resolveWith((states) {
//                             if (states.contains(MaterialState.pressed)) {
//                               return Colors.white;
//                             }
//                             return Color.fromARGB(255, 210, 71, 61);
//                           }),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(16)))),
//                       child: Text(
//                         "sign up",
//                         style: GoogleFonts.lemon(textStyle: kBodyTextalt),
//                       ),
//                     ),
//                   ], //children list
//                 ),
//               )
//             ],
//           )),
//         ),
//       ],
//     );
//  }

