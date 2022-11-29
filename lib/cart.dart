import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  List<String> title = ['header','head','header'];
  List<String> desc = ['subhead','subhead','ssd'];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title:Text('Shopping cart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.black
          ),),
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.pinkAccent,
              child:Row(
                children: [
                  Column(
                    children: [
                      Text(title[index]),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: title.length,
      )
    );


  }
}
