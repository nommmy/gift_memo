import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:gift_memo/model/anniv_with_gift_recipient.dart';

class AnniversaryRepository {
  Future<List<AnnivWithGiftRecipient>> fetchAnniversaries() async {
    try {
      final SupabaseClient supabase = Supabase.instance.client;
      final data = await supabase.from('t_anniversary').select(
          'name, date, is_annually, t_gift(name, image_url, price, shop), t_recipient(name, icon)');
      List<AnnivWithGiftRecipient> anniversary = [];
      data.forEach((anniv) {
        anniversary.add(AnnivWithGiftRecipient.fromJson(anniv));
      });

      return anniversary;
    } catch (error) {
      return <AnnivWithGiftRecipient>[];
    }
  }
}
