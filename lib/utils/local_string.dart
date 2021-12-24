import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          'name1': 'Dart',
          'name2': 'Java',
          'name3': 'Javascript',
          'title': 'MSA Demo',
          'changelang': 'Change Language'
        },
        //HINDI LANGUAGE
        'hi_IN': {
          'name1': 'डार्ट',
          'name2': 'जावा',
          'name3': 'जावास्क्रिप्ट',
          'title': 'MSA डेमो',
          'changelang': 'भाषा बदलो'
        },
        //URDU LANGUAGE
        'ur_IN': {
          'name1': 'ڈارٹಡ್',
          'name2': 'جاواಡ್',
          'name3': 'جاوا سکرپٹಡ್',
          'title': 'MSA ڈیمو',
          'changelang': 'لینگویج چنگے'
        }
      };
}
