import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:gift_memo/view_model/anniversary_view_model.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  List<AnnivWithGiftRecipient> _selectedEvents = [];

  final AnniversaryViewModel _viewModel = AnniversaryViewModel();
  late Future<List<AnnivWithGiftRecipient>> _anniversaryFuture;

  // TODO: こういうのをサービスに書くべき？
  Future<List<AnnivWithGiftRecipient>> _fetchAnniversaries() async {
    return _viewModel.fetchAnniversaries();
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _anniversaryFuture = _fetchAnniversaries();
    });
  }

  List<AnnivWithGiftRecipient> _getEventsForDay(
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
    return FutureBuilder(
        future: _anniversaryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: SafeArea(
                  child: Column(children: [
                TableCalendar(
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
                      _selectedEvents = _getEventsForDay(selectedDay, snapshot.data ?? []);
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
                  eventLoader: (day) {
                    return _getEventsForDay(day, snapshot.data ?? []);
                  },
                ),
                _selectedEvents.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: _selectedEvents.length,
                          itemBuilder: (context, index) {
                            final event = _selectedEvents[index];
                            return Card(
                              child: ListTile(
                                title: Text(event.name),
                              ),
                            );
                          },
                        ),
                      )
                    : const Expanded(child: Center(child: Text('No events found'))),
              ])),
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
