// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);
  final description = 'This Is a Sample Text';
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 200.sp,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.cyan, //TODO this must be dynamic for each card
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50.sp,
                      width: 255.w,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          //TODO the number and text of chips must be dynamic
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          const Chip(
                            side: BorderSide(color: Colors.grey),
                            backgroundColor: Colors.transparent,
                            label: Text('School'),
                          ),
                          SizedBox(width: 8.sp),
                          //TODO change chips to dynamically remove or be selected
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.sp,
                    ),
                    Icon(
                      IconlyBold.editSquare,
                      size: 25.sp,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.sp),
                child: Row(
                  children: [
                    Text(
                      'Taking My Sister To School', //TODO '..my sister...' is hardcoded, must be dynamic
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(IconlyBroken.calendar),
                  SizedBox(width: 8.sp),
                  Text('12 October 2021'), //TODO date is hardcoded
                ],
              ),
              Row(
                children: [
                  const Icon(IconlyLight.time_square),
                  SizedBox(width: 8.sp),
                  const Text('7:30 (Remind at 7:15)'), //TODO time is hardcoded
                  //Checkbox(value: true, onChanged: onChanged)
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
