import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learnn/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  late SharedPreferences preferences;
  bool loading = false;
  bool isLoadedIn = false;

  @override
  void initState(){
    super.initState();
    isSignedIn();
  }
  void isSignedIn() async{
    setState(() {
      loading = true;
    });
    preferences =await SharedPreferences.getInstance();
    isLoadedIn = await googleSignIn.isSignedIn();
    if (isLoadedIn) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    }
    setState(() {
      loading = false;
    });
  }

  Future handleSignIn()async{
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    // GoogleSignInAccount googleUser = await googleSignIn.signIn();
    // GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
    // FirebaseUser firebaseUser = await firebaseAuth.signInwithG

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  
}
