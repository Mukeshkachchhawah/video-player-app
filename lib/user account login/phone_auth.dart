import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class phone_auth extends StatefulWidget {
  const phone_auth({Key? key}) : super(key: key);

  @override
  State<phone_auth> createState() => _phone_authState();
}

class _phone_authState extends State<phone_auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Mobile Auth")),
    );
  }
}
