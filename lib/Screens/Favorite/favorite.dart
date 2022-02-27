import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Row(
            children: [
              Text('MEC \n  Events'),
              SizedBox(width: MediaQuery.of(context).size.width*0.25,),
              Center(child: Text('Favorites',style: TextStyle(fontSize: 28),))
            ],
          ),
          backgroundColor: Color(0xFF122F34),
        ),
      ),
      body: Text('Favorite'),
      backgroundColor: Color(0xFF2B7581),
    );
  }
}
