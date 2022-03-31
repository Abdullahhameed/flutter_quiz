import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
