// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

// ignore: camel_case_types
enum selectedMode { Today, Upcoming, TaskDone }

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({Key? key}) : super(key: key);

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  selectedMode sl = selectedMode.Upcoming;

  Color _getTextColor(bool isActive) {
    return isActive
        ? CupertinoColors.white
        : CupertinoColors.black.withOpacity(0.6);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 0, right: 0),
      child: CustomSlidingSegmentedControl(
          isStretch: true,
          initialValue: sl,
          duration: Duration(milliseconds: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.transparent,
          ),
          thumbDecoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          children: <selectedMode, Widget>{
            selectedMode.Today: Text(
              'Today',
              style: TextStyle(color: _getTextColor(sl == selectedMode.Today)),
            ),
            selectedMode.Upcoming: Text(
              'Upcoming',
              style:
                  TextStyle(color: _getTextColor(sl == selectedMode.Upcoming)),
            ),
            selectedMode.TaskDone: Text(
              'Task Done',
              style:
                  TextStyle(color: _getTextColor(sl == selectedMode.TaskDone)),
            ),
          },
          onValueChanged: (selectedMode? value) {
            setState(() {
              sl = value ?? selectedMode.Today;
            });
          }),
    );
  }
}
