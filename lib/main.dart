import 'package:flutter/material.dart';

void main() {

  runApp(const MaterialApp(
    title: 'Presence',
    home: User(),
  ));
}
class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  List _userList = ['fetra','harinjatovo','nambinina'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste User')
      ),
      body: ListView.builder(
        itemCount: _userList.length,
        itemBuilder: (context, index) {
            if(index.isEven) {
              return const Divider();
            }
            return ListTile(
              title: Text(_userList[index])
            );
        },
      ),
    );
  }
}
