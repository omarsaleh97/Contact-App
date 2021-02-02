
import 'package:contact_app/src/models/contact.dart';

import 'jsonplaceholder_provider.dart';

class Repository {
  final JsonPlaceHolderProvider jsonProvider=JsonPlaceHolderProvider();

  Future<List<Contact>> fetchContacts() async => await jsonProvider.fetchContacts();
}