import 'package:contact_app/src/blocs/contact_bloc.dart';
import 'package:flutter/material.dart';

class ContactsProvider extends InheritedWidget{
  final ContactsBloc bloc;

  ContactsProvider({Key key, Widget child})
      :bloc = ContactsBloc(),
        super(key:key,child:child);

  bool updateShouldNotify(_) => true;

  static ContactsBloc of (BuildContext context){
    // ignore: deprecated_member_use
    return(context.inheritFromWidgetOfExactType(ContactsProvider) as ContactsProvider)
        .bloc;
  }
}