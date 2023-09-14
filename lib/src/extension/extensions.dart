import 'package:intl/intl.dart';

extension NumExtension on int {


DateTime getDateTimeFromHour (){
  final now = DateTime.now();
  return DateTime(now.year,now.month,now.day,this);

}


}


extension DateTimeExtension on DateTime {

  String getFormattedHour(){
    final formatter = DateFormat('HH:mm');
    return formatter.format(this);
  }


}