import 'package:flutter/material.dart';
import 'package:gift_memo/view_model/anniversary_view_model.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';
import 'package:gift_memo/components/home/calendar.dart';
import 'package:gift_memo/components/gift_list_horizontal.dart';
import 'package:gift_memo/components/wide_button.dart';
import 'package:gift_memo/components/home/anniversary_header.dart';

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
            return ListView(children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Calendar(
                      anniversary: snapshot.data, onDaySelected: updateSelectedAnniversary)),
              const SizedBox(height: 32),
              _selectedAnniversary.isNotEmpty
                  ? Column(children: [
                      ..._selectedAnniversary.map((anniv) => Column(children: [
                            Padding(
                                padding: const EdgeInsets.fromLTRB(40, 0, 32, 8),
                                child: AnniversaryHeader(anniversary: anniv)),
                            GiftListHorizontal(anniversary: anniv)
                          ])),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(48, 12, 48, 0),
                          child: WideButton(onClickEvent: addEvent))
                    ])
                  : const Center(child: Text('No Events')),
            ]);
          } else {
            return const Center(
                child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator()));
          }
        });
  }
}
