import 'package:autocomplete_textfield_ns/autocomplete_textfield_ns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/search_screens/firstpage.dart';

class search_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _search_PageState();
}

class _search_PageState extends State<search_Page> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirstPage(),
    );
  }
}
