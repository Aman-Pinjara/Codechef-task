import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color offWhite = Color.fromARGB(146, 176, 174, 174);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final emailNode = FocusNode();
  final passNode = FocusNode();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 80,
                    ),
                    ImageCustom(),
                    SizedBox(
                      height: 20,
                    ),
                    EmailField(),
                    SizedBox(
                      height: 20,
                    ),
                    PasswordField(),
                    ForgotPassword(),
                    Login(),
                    Create(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Heading(),
                    SubHeading(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 1250),
      tween: Tween<double>(begin: 0, end: 1),
      builder: ((BuildContext context, double value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, value * 40, 0, 0),
            child: child,
          ),
        );
      }),
      child: const Text(
        "Welcome back!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Login to continue.",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: offWhite,
      ),
    );
  }
}

class ImageCustom extends StatelessWidget {
  const ImageCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 230,
        width: 230,
        child: Image.asset(
          'assets/back.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Color.fromARGB(146, 142, 140, 140),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: offWhite)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: offWhite)),
          labelText: "Email",
          hintText: "name@gmail.com",
          labelStyle: TextStyle(color: offWhite)),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool vis = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.done,
      obscureText: vis,
      cursorColor: const Color.fromARGB(146, 142, 140, 140),
      decoration: InputDecoration(
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                vis = !vis;
              });
            },
            child: const Text(
              "Show",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 78, 218, 194)),
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: offWhite)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: offWhite)),
          labelText: "Password",
          labelStyle:
              const TextStyle(color: offWhite)),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
      child: Text(
        "Forgot Password?",
        style: TextStyle(
            color: Color.fromARGB(255, 78, 218, 194),
            fontWeight: FontWeight.w600,
            fontSize: 14),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: ButtonStyle(
              shadowColor:
                  MaterialStateProperty.all(Color.fromARGB(185, 117, 57, 200)),
              elevation: MaterialStateProperty.all(2),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 117, 57, 200))),
          onPressed: () {},
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 38, 3, 0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              foregroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 117, 57, 200)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(33, 117, 57, 200))),
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
