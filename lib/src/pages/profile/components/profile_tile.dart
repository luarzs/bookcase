import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const ListTile(
        title: Center(child: Text('alou')),
        subtitle: Center(child: Text('alou')),
      ),
    );
  }
}
