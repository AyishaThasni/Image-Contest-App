import 'package:flutter/material.dart';
import 'package:picture_contest_app/Authentication/login_screen.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 38, right: 38),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff4FB19D)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Help",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff4FB19D)),
                ),
              ),
              SizedBox(
                height: 65,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff4FB19D),
                          Color(0xff4FB19D),
                          Color(0xffffc371),
                        ],
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                          maxWidth: double.infinity, minHeight: 50),
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
