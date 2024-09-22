import 'package:flutter/material.dart';
import 'package:gift_memo/view_model/anniversary_view_model.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';
import 'package:gift_memo/components/home/calendar.dart';
import 'package:gift_memo/components/home/gift_list_horizontal.dart';

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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _anniversaryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Calendar(
                        anniversary: snapshot.data, onDaySelected: updateSelectedAnniversary)),
                const SizedBox(height: 50),
                _selectedAnniversary.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                            itemCount: _selectedAnniversary.length,
                            itemBuilder: (context, index) {
                              final anniv = _selectedAnniversary[index];
                              return GiftListHorizontal(anniversary: anniv);
                            }))
                    : const Expanded(child: Center(child: Text('No events found'))),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
