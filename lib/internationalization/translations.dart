import 'package:get/get.dart';

class Messages extends Translations {
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'hello'},
        'hi_IN': {'hello': 'नमस्ते'},
        'ta_IN': {'hello': 'வணக்கம்'}
      };
}
