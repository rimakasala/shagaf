import 'package:flutter/material.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/date&timwidgets/timepicker.dart';
class Timewidget extends StatefulWidget {
 const Timewidget({super.key});

  @override
  State<Timewidget> createState() => _TimewidgetState();
}

class _TimewidgetState extends State<Timewidget> {
  TimeOfDay _fromTime = const TimeOfDay(hour: 7, minute: 1);

  TimeOfDay _toTime = const TimeOfDay(hour: 9, minute: 30);

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              TimePicker(
                title: 'From:',
                selectedTime: _fromTime,
                onTimePicked: (time) {
                  setState(() {
                    _fromTime = time;
                  });
                },
              ),
            
              TimePicker(
                title: 'To:',
                selectedTime: _toTime,
                onTimePicked: (time) {
                  setState(() {
                    _toTime = time;
                  });
                },
              ),
            ],
          );
  }
}
