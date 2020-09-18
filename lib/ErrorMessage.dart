import"package:flutter/material.dart";

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.sentiment_dissatisfied),
          Text("Something went wrong; please try again "),
          FlatButton(
            child: Text("Retry"),
            onPressed:(){}
          )
        ],
      ),
    );
  }
}
