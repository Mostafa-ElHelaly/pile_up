import 'package:flutter/material.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:table_calendar/table_calendar.dart';

class caledar extends StatefulWidget {
  const caledar({super.key});

  @override
  State<caledar> createState() => _caledarState();
}

class _caledarState extends State<caledar> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(239, 108, 77, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/Vector@3x.png',
                scale: 3,
              ))
        ],
        title: const Center(
          child: textbox(
            text: 'Calendar',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          child: TableCalendar(
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonShowsNext: bool.fromEnvironment(''),
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(20300, 10, 16),
            onDaySelected: _onDaySelected,
          ),
        )
      ],
    );
  }
}
