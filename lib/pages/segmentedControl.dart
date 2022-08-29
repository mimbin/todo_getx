// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

// ignore: camel_case_types
enum selectedMode { Today, Upcoming, TAskDone }

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({Key? key}) : super(key: key);

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  selectedMode sl = selectedMode.Upcoming;
  void setStateFunction() {
    setState(() {
      sl = selectedMode.Today; //TODO why the hell set state is not valid here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
      child: CustomSlidingSegmentedControl(
          isStretch: true,
          duration: Duration(milliseconds: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey.shade200,
          ),
          thumbDecoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          children: <selectedMode, Widget>{
            selectedMode.Today: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: setStateFunction,
                child: Text(
                  'Today',
                  style: TextStyle(color: CupertinoColors.white),
                ),
              ),
            ),
            selectedMode.Upcoming: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Upcoming',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            selectedMode.TAskDone: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Task Done',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          },
          onValueChanged: (selectedMode? value) {
            if (value != null) {
              setState(() {
                sl = value;
              });
            }
          }),
    );
  }
}
