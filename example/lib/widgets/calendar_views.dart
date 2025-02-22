import 'dart:math';

import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../enumerations.dart';
import 'day_view_widget.dart';
import 'month_view_widget.dart';
import 'week_view_widget.dart';

class CalendarViews extends StatelessWidget {
  final CalendarView view;
  final TextStyle hourTextStyle;
  final Color seperatorColor;
  final Color doubleDayColor;
  final Color odDayColor;

  const CalendarViews({Key? key, this.view = CalendarView.month, required this.hourTextStyle, required this.seperatorColor, required this.doubleDayColor, required this.odDayColor})
      : super(key: key);

  final _breakPoint = 490.0;

  @override
  Widget build(BuildContext context) {
    final availableWidth = MediaQuery.of(context).size.width;
    final width = min(_breakPoint, availableWidth);

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColors.grey,
      child: Center(
        child: view == CalendarView.month
            ? MonthViewWidget(
                width: width,
              )
            : view == CalendarView.day
                ? DayViewWidget(
                  hourTextStyle: hourTextStyle,
                    width: width,
                    seperatorColor: seperatorColor,
                  )
                : WeekViewWidget(
                  odDayColor: odDayColor,
                  weekSubtitleBuilder: (date)=>Text('a'),
                  doubleDayColor: doubleDayColor,
                    hourTextStyle: hourTextStyle,
                    width: width,
                    seperatorColor: seperatorColor,
                  ),
      ),
    );
  }
}
