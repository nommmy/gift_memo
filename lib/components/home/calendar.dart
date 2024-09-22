import 'package:flutter/material.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  final List<AnnivWithGiftRecipient>? anniversary;
  final Function(List<AnnivWithGiftRecipient>) onDaySelected;
  const Calendar({super.key, required this.anniversary, required this.onDaySelected});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime _currentDay = DateTime.now();

  List<AnnivWithGiftRecipient> _getAnniversariesForDay(
      DateTime day, List<AnnivWithGiftRecipient> anniversary) {
    return anniversary
        .where((anniv) =>
            (anniv.isAnnually || anniv.date.year == day.year) &&
            anniv.date.month == day.month &&
            anniv.date.day == day.day)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      availableGestures: AvailableGestures.horizontalSwipe,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
      ),
      rowHeight: 42,
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2040, 12, 31),
      focusedDay: _focusedDay,
      currentDay: _currentDay, // マークが表示される日付
      onDaySelected: ((selectedDay, focusedDay) {
        setState(() {
          _currentDay = selectedDay; // タップした際にマーク位置を更新
          _focusedDay = selectedDay; // タップした際にカレンダーの表示位置を更新
        });
        widget.onDaySelected(_getAnniversariesForDay(selectedDay, widget.anniversary ?? []));
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
      eventLoader: (day) {
        return _getAnniversariesForDay(day, widget.anniversary ?? []);
      },
    );
  }
}
