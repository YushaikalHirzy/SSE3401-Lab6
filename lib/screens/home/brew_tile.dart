import 'package:brew_crew/models/brew.dart';
import 'package:flutter/material.dart';

class BrewTile extends StatelessWidget {
  Brew? brew;
  BrewTile({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              'assets/coffee_icon.png',
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(brew!.name),
          subtitle: Text('Takes ${brew!.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
