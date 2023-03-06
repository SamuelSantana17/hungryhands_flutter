import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungry_hands/authentication/signup.dart';
import 'package:hungry_hands/palette.dart';
import 'package:hungry_hands/screens/home_screen.dart';
import 'package:hungry_hands/widgets/text-input-email-password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('Go to HomePage'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }),
      ),
    );
  }

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
}
