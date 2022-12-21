import 'package:flutter/material.dart';
import 'package:uas/Page/currency.dart';
import 'package:uas/Page/history.dart';
import 'package:uas/Page/profile.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:  Column(
        children: [
          _currency(context),
          _history(context),
          _profile(context)
        ],
      ),
    );
  }
  Widget _currency(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Konversi"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Currency()
            ));
        },
      ),
    );
  }
  Widget _history(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("History"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const History()
            ));
        },
      ),
    );
  }
  Widget _profile(BuildContext context){
    return Container(
      width: 500,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Profile"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Profile()
            ));
        },
      ),
    );
  }
}
