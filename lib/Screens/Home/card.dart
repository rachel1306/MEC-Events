import 'package:flutter/material.dart';

class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B7581),
      body: Card(
        color: Color(0xFF2B7581),
        child: Column(
          children: [
            Container(
              color: Color(0xFF1F525A),
              height: MediaQuery.of(context).size.height*0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/event.jpeg'),
                    ),
                  ),
                  Text('TLE MEC',style: TextStyle(color: Colors.white),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('5 mins'),
                  )
                ],
              ),
            ),
            Image.asset('assets/event.jpeg',height: 300,width: 300,),
            Container(
              color: Color(0xFF1F525A),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down)),
                  Spacer(),
                  Text('Last date: 28-02-2022',style: TextStyle(color: Colors.white),)
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
