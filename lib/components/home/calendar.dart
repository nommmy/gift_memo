import 'package:flutter/material.dart';
import 'package:gift_memo/model/anniversary.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<Anniversary>> fetchAnniversary() async {
  try {
    final SupabaseClient supabase = Supabase.instance.client;
    final data = await supabase.from('t_anniversary').select('name, date, is_annually');

    List<Anniversary> anniversary = [];
    data.forEach((anniv) {
      anniversary.add(Anniversary.fromJson(anniv));
    });

    return anniversary;
  } catch (error) {
    return <Anniversary>[];
  }
}

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

  // late Anniversary _anniversary;

  // @override
  // void initState() async {
  //   super.initState();
  //      setState(() {
  //     _anniversary = await _fetchAnniversary();
  //   });
  // }

  //   Future<Anniversary> _fetchAnniversary() async {

  //   }

  // Future<void> _fetchData() async {
  //   // データをフェッチする処理
  //   await Future.delayed(const Duration(seconds: 2)); // ダミーデータのフェッチ
  //   setState(() {
  //     _anniversary = {
  //       'id': 1,
  //       'name': '結婚記念日',
  //       'date': DateTime.now(),
  //       'isGiftReminderEnabled': false,
  //       'isAnniversaryReminderEnabled': false,
  //       'userId': '1',
  //       'isAnnually': true,
  //     };
  //   });
  // }

// late final ValueNotifier<List> _selectedEvents;
//   _selectedEvents = ValueNotifier(_getEventsForDay(_focusedDay!));

//   List _getEventsForDay(DateTime day) {
//     return events[day] ?? [];
//   }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchAnniversary(),
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
