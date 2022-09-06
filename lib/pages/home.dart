import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import './segmentedControl.dart';
import './cards_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: Text(
          'Task Manager',
          style: TextStyle(color: Colors.black, fontSize: 15.sp),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 12.sp),
          child: GestureDetector(
            onTap: () {
              //print('hello'); //TODO window icon functionality
            },
            child: Stack(
              alignment: Alignment
                  .center, //! the hell is wrong with centering two icons
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: Colors.black87,
                  size: 42.sp,
                ),
                Icon(
                  IconlyBold.category,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 12.sp),
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 30.0.sp,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0.sp, left: 12.sp, right: 12.sp),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.sp),
                  child: RichText(
                    maxLines: 2,
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(height: 1.5.sp)),
                        TextSpan(
                          text: "Here's Update Today.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    //TODO search icon functionality
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.black87,
                        size: 55.sp,
                      ),
                      Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.white,
                        size: 19.0.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SegmentedControl(),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  MyCard(),
                  MyCard(),
                  MyCard(),
                  MyCard(),
                  MyCard(),
                  MyCard(),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
