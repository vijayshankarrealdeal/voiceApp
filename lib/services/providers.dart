import 'package:provider/provider.dart';
import 'package:voiceApp/services/firebase_services/database.dart';

class ProviderInner {
  StreamProvider getUsersDeatails(Database database, String uid) {
    return StreamProvider.value(value: database.getUserData(uid));
  }
}
