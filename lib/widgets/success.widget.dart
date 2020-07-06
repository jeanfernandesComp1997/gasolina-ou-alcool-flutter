import 'package:flutter/material.dart';
import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            text: "CALCULAR NOVAMENTE",
            invert: true,
          ),
        ],
      ),
    );
  }
}
