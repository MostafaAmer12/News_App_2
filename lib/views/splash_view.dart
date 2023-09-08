import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_2/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeView();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: size.height / 3,
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: size.height / 4,
                width: size.width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/news.png",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height: size.height / 7,
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Color(0xfffa3a3a), //fa3a3a
              ),
            ),
            SizedBox(
              height: size.height / 60,
            ),
          ],
        ),
      ),
    );
  }
}
