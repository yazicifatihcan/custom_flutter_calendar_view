import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../model/event.dart';

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double? width;
  final TextStyle hourTextStyle;
  final Color seperatorColor;
  final Color doubleDayColor;
  final Color odDayColor;

  const WeekViewWidget({Key? key, this.state, this.width, required this.hourTextStyle, required this.seperatorColor, required this.doubleDayColor, required this.odDayColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeekView<Event>(
      key: state,
      width: width,
      odDayColor: odDayColor,
      doubleDayColor: doubleDayColor,
      hourTextStyle: hourTextStyle,
      seperatorColor: seperatorColor,
      weekDayStyle: TextStyle(),
    );
  }
}
