import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Task Manager',
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          highlightColor: Colors.amber,
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
      body: Column(
        children: <Widget>[
          Row(
            //TODO a safe area must be declared in order to specify start of the body
            children: [Text('welcome back!')],
          )
        ],
      ),
    );
  }
}
