import 'package:intl/intl.dart';

extension NumExtension on int {


DateTime getDateTimeFromHour (){
  final now = DateTime.now();
  return DateTime(now.year,now.month,now.day,this);

}


}


extension DateTimeExtension on DateTime {

  String getFormattedHour(bool showOnlyFirst){
    final formatter = DateFormat('HH:mm');
    if(showOnlyFirst){
      final values = formatter.format(this).split(':');
      return int.parse(values[0]).toString();
    }else{
      return formatter.format(this);
    }
  }


}