import 'package:flutter/material.dart';
import 'package:practice/Widegets/roundedbutton.dart';
import 'package:practice/custom_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.50),
          title: Text(""),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: 500,
                color: Colors.black.withOpacity(0.30),
                child: Text(
                  "COUNTER APP",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "$counter",
                style: TextStyle(fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    bgColor: PrimaryColor.Color,
                    icond: Icons.add,
                    colord: Colors.black,
                    onPress: () {
                      setState(() {
                        counter++;
                      });
                      ;
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  RoundedButton(
                    icond: Icons.remove,
                    bgColor: Colors.black,
                    onPress: () {
                      setState(() {
                        counter--;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                  icond: Icons.delete,
                  bgColor: Colors.black,
                  onPress: () {
                    setState(() {
                      counter = 0;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                "RESET",
              )
            ],
          ),
        ));
  }
}
