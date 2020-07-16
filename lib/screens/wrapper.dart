import 'package:alpha/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:alpha/models/user.dart';
import 'authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // return either Home or Aunthenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
