import 'package:flutter/material.dart';

class ButtonCategories extends StatefulWidget {
  final String text;

  ButtonCategories({
    @required this.text,
  });

  @override
  State<ButtonCategories> createState() => _ButtonCategoriesState();
}

class _ButtonCategoriesState extends State<ButtonCategories> {
  bool ispressed = true;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(8),
      elevation: 3,
      child: Text(
        widget.text,
        style: TextStyle(
          color: ispressed ? Colors.black : Colors.white,
        ),
      ),
      color: ispressed ? Colors.white : Colors.black,
      onPressed: () => setState(() {
        ispressed = !ispressed;
      }),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
          side: BorderSide(color: Color.fromRGBO(220, 220, 220, 0.7))),
    );
  }
}
