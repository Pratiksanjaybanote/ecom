import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map<String, dynamic>> products = [
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text',
      'Price': '₹2317',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My Cart')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(7),
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),borderRadius: BorderRadius.circular(15.0)),
                      child: Row(
                        children: [
                          Image.asset(
                            products[index]['Image'],
                            width: 90,
                            height: 90,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(products[index]['ProductName'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      products[index]['Description'].toString(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.black26)),
                                  Text(
                                    products[index]['Price'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total (4 items) :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                  SizedBox(
                    width: 60,
                  ),
                  Text('₹ 792', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                ],
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  fixedSize: MaterialStateProperty.all <Size>(Size(280, 50))
                ),
                  onPressed: (){}, child: Text('Proceed to checkout',style: TextStyle(color:Colors.white, ),))
            ],
          ),
        ));
  }
}
