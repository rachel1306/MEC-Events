import 'package:flutter/material.dart';
import 'package:mec_events/Screens/Home/card.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked=false;
  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
          ),
        ),
        backgroundColor: Colors.grey,
        title: Center(child: Text('Filter', style: TextStyle(color: Colors.white),),),
        content: SingleChildScrollView(
          child: Column(
            children: [
              CheckboxListTile(
                checkColor: Colors.white,
                value: isChecked,
                title: Text('ABC', style: TextStyle(color: Colors.white)),
                onChanged: (bool ? value){
                  setState(() {
                    isChecked=value!;
                  });
                },
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                value: isChecked,
                title: Text('XYZ', style: TextStyle(color: Colors.white)),
                onChanged: (bool ? value){
                  setState(() {
                    isChecked=value!;
                  });
                },
              ),
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text('MEC \n  Events'),
          backgroundColor: Color(0xFF122F34),
          actions: <Widget>[
            IconButton(onPressed: (){ createAlertDialog(context); }, icon: Icon(Icons.filter_alt_outlined, color: Colors.black,))
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF2B7581),
            child: card())),
      backgroundColor: Color(0xFF2B7581),
    );
  }
}
