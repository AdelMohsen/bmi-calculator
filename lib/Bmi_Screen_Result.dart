import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;

  BmiResult({@required this.isMale, @required this.result, @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'BMI Result',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
            ),
            Text('Result : $result',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500)),
            Text('Age : $age',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
