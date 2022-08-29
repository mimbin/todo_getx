import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './segmentedControl.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Task Manager',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        leading: InkWell(
          highlightColor: Colors.amber, // donno what this color is for
          //splashColor: Colors.green,
          child: GestureDetector(
            onTap: () {
              //print('hello');
            },
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.black87,
                    size: 42,
                  ),
                  Icon(
                    Icons.auto_awesome_mosaic,
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 8.0),
            child: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: RichText(
                    maxLines: 2,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        
                      ),
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(height: 1.5)),
                        TextSpan(
                          text: "Here's Update Today.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    //TODO search
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.black87,
                        size: 55,
                      ),
                      Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.white,
                        size: 19.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SegmentedControl()
          ],
        ),
      ),
    );
  }
}
