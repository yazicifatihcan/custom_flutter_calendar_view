import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../model/event.dart';

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double? width;
  final TextStyle hourTextStyle;
  final Color seperatorColor;

  const WeekViewWidget({Key? key, this.state, this.width, required this.hourTextStyle, required this.seperatorColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeekView<Event>(
      key: state,
      width: width,
      hourTextStyle: hourTextStyle,
      seperatorColor: seperatorColor,
    );
  }
}
