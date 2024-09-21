import 'package:gift_memo/model/anniv_with_gift_recipient.dart';
import 'package:gift_memo/repository/anniversary_repository.dart';

class AnniversaryViewModel {
  final AnniversaryRepository _repository = AnniversaryRepository();

  Future<List<AnnivWithGiftRecipient>> fetchAnniversaries() {
    return _repository.fetchAnniversaries();
  }
}
