import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import'package:table_calendar/table_calendar.dart';
class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
 DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          calendarStyle: const CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: Color(0xFFF04C29),
              shape: BoxShape.circle,
            
          ), 
            todayDecoration: BoxDecoration(
              color: Color(0xFFF04C29),
              shape: BoxShape.circle,
            ),
            
          ),
          focusedDay: _selectedDate,
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDate = selectedDay;
            });
          },
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
        ),
      
      ],
    );
  }
}