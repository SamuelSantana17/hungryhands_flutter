import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hungryhands_flutter/palatte.dart';
import 'package:hungryhands_flutter/widgets/background-image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 350,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    //Email Input Container
                    TextInput(),
                    //Password Input Container
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: "Restaurant Id",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  FontAwesomeIcons.solidEnvelope,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              hintStyle: kBodyText),
          style: kBodyText,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}
