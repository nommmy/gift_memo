import 'package:flutter/material.dart';
import 'package:gift_memo/view_model/anniversary_view_model.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';
import 'package:gift_memo/components/home/calendar.dart';
import 'package:gift_memo/components/gift_list_horizontal.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  List<AnnivWithGiftRecipient> _selectedAnniversary = [];

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

  void updateSelectedAnniversary(List<AnnivWithGiftRecipient> newSelectedAnniversary) {
    setState(() {
      _selectedAnniversary = newSelectedAnniversary;
    });
  }

  void addEvent() {}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _anniversaryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Calendar(
                        anniversary: snapshot.data, onDaySelected: updateSelectedAnniversary)),
                const SizedBox(height: 32),
                _selectedAnniversary.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                            itemCount: _selectedAnniversary.length + 1,
                            itemBuilder: (context, index) {
                              if (index == _selectedAnniversary.length) {
                                return Padding(
                                  padding: const EdgeInsets.fromLTRB(48, 12, 48, 0),
                                  child: SizedBox(
                                      width: double.infinity,
                                      height: 24,
                                      child: TextButton(
                                          onPressed: addEvent,
                                          style: TextButton.styleFrom(
                                            backgroundColor: Theme.of(context).colorScheme.primary,
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: const Text('記念日を追加',
                                              style: TextStyle(
                                                  fontSize: 12, fontWeight: FontWeight.bold)))),
                                );
                              }
                              final anniv = _selectedAnniversary[index];
                              return Column(children: [
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 0, 32, 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(anniv.name,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold, fontSize: 18))),
                                        Wrap(spacing: 4, children: [
                                          ...anniv.recipients!.map((recipient) => CircleAvatar(
                                                radius: 16,
                                                backgroundImage: AssetImage(
                                                    'assets/images/user_icon/${recipient.icon}.webp'),
                                              ))
                                        ])
                                      ],
                                    )),
                                GiftListHorizontal(anniversary: anniv)
                              ]);
                            }))
                    : const Expanded(child: Center(child: Text('No Events'))),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
