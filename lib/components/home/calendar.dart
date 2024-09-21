import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:gift_memo/view_model/anniversary_view_model.dart';

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

  final AnniversaryViewModel _viewModel = AnniversaryViewModel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _viewModel.fetchAnniversaries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
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
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
