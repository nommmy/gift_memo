import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<Calendar> {
  // カレンダーが表示される日付
  DateTime _focusedDay = DateTime.now();
  // カレンダー上でマークが表示される日付
  DateTime _currentDay = DateTime.now();

  final sampleMap = {
  DateTime.utc(2022, 8, 3): ['firstEvent', 'secodnEvent'],
  DateTime.utc(2022, 8, 5): ['thirdEvent', 'fourthEvent']
};

// late final ValueNotifier<List> _selectedEvents;
//   _selectedEvents = ValueNotifier(_getEventsForDay(_focusedDay!));

//   List _getEventsForDay(DateTime day) {
//     return events[day] ?? [];
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TableCalendar(
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
          ),
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2040, 12, 31),
          focusedDay: _focusedDay,
          currentDay: _currentDay, // マークが表示される日付
          onDaySelected: ((selectedDay, focusedDay) {
            setState(() {
              _currentDay = selectedDay; // タップした際にマーク位置を更新
              _focusedDay = selectedDay; // タップした際にカレンダーの表示位置を更新
              // _selectedEvents = _getEventsForDay(selectedDay);
            });
          }),
          calendarBuilders: CalendarBuilders(
            todayBuilder: (context, day, focusedDay) => Container(
              margin: const EdgeInsets.all(6.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: Text(
                day.day.toString(),
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
          ),
          // eventLoader: (day) {
          //  return _getEventsForDay(day);
          // },
        ),
      ),
    );
  }
}
