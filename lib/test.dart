import 'package:flutter/material.dart';
import 'package:tassskkkk5/cart.dart';

class shopping extends StatefulWidget {
  const shopping({Key? key}) : super(key: key);

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  List<String> images = [
    'assets/images/a.jpg',
    'assets/images/b.jpg',
    'assets/images/c.jpeg',
    'assets/images/d.png',
  ];
  List<String> title = ['Title1', 'title2', 'title3', 'title4'];
  List<String> mass = ['shoping1', 'shoping2', 'shoping3', 'shoping4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cart()));
            },
            icon: Icon(Icons.card_giftcard),
          )
        ],
        title: Text('Task'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 190,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/y.jpg',
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Center(
                      child: Text(
                        'This is MY Task 5',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 5.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.black.withOpacity(0.6),
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
            child: Text(
              'find out our perfect categories',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
              child: GridView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                      borderRadius:BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                                height: 120,
                                width: double.infinity,
                              ),
                            )),
                        Text(
                          title[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          mass[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
