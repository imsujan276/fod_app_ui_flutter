import 'package:food_delivery/app/constants/strings.dart';
import 'package:get/get.dart';

///without parameters
class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'loin': Strings.login,
          'signup': Strings.signup,
        },
        'de_DE': {
          'hello': 'Hallo Welt',
        }
      };
}

Map<String, Map<String, String>> get keys => {
      'en_US': {
        'logged_in': 'logged in as @name with email @email',
        'create_an_account': Strings.create_an_account
      },
      'es_ES': {
        'logged_in': 'iniciado sesión como @name con e-mail @email',
      }
    };
