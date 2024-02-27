import 'package:flutter/material.dart';

class view_All extends StatefulWidget {
  const view_All({super.key});

  @override
  State<view_All> createState() => _view_AllState();
}

class _view_AllState extends State<view_All> {
  List<Map<String, dynamic>> products = [
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Discaunt' : '60% ',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Discaunt' : '60% ',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Discaunt' : '60% ',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Discaunt' : '60% ',
      'Price': '₹2317',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: GridView.builder(

        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8, // Adjust this value to set the horizontal spacing
          mainAxisSpacing: 8,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 280,
            width: 185,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(

                    products[index]['Image'],
                    height: 200,
                    width: 180,
                  ),
                ),
                Text(products[index]['ProductName']),
                Text('Satin Saree (Dark Green)',style: TextStyle(color: Colors.black12),),
                Row(
                  children: [
                    Text(products[index]['Price']),
                    SizedBox(width: 10,),
                    Text(products[index]['Discaunt'],style: TextStyle(color: Colors.green),)
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
