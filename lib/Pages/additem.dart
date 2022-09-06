import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Add_Item extends StatefulWidget {
  const Add_Item({Key? key}) : super(key: key);

  @override
  State<Add_Item> createState() => Add_ItemState();
}

class Add_ItemState extends State<Add_Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Page"),
      ),
    );
  }
}
