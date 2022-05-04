import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TrafficLightWidget extends StatefulWidget {
  final height = 3;
  const TrafficLightWidget({Key? key}) : super(key: key);

  @override
  State<TrafficLightWidget> createState() => _TrafficLightWidgetState();
}

class _TrafficLightWidgetState extends State<TrafficLightWidget> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Đèn cao ${widget.height} mét và đèn đang có màu ${counter}')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter ++;
          });
        },

        child: Icon(Icons.add),
      ),
    );
  }
}
