import 'package:ctfang_web/constants/nav_items.dart';
import 'package:flutter/material.dart';
import 'package:ctfang_web/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgDark,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // main
          Container(
            height: 60.0,
            width: double.maxFinite,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.transparent, CustomColor.bgLight]),
                borderRadius: BorderRadius.circular(100)),
            child: Row(children: [
              const Text(
                "CTFang",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.ftLight,
                ),
              ),
              const Spacer(),
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(navTitles[i],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
            ]),
          ),
          // background
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          // footer
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
