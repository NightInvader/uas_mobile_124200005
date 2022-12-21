import 'package:flutter/material.dart';

class Saran extends StatelessWidget {
  const Saran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kesan dan Saran'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
        ),
        child: Center(
          child: Column(
            children: [
              Text("Kesan :"),
              Text("Bapaknya baik dan suka ngasih keringanan"),
              Text("Saran :"),
              Text("Waktu per Presentasi bisa dipercepat pak,"),
              Text("kasian yang lain kalo waktu nya molor"),
            ],
          ),
        ),
      ),
    );
  }
}
