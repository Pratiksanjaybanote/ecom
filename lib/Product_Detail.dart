import 'package:ecom/Cart_page.dart';
import 'package:flutter/material.dart';

class product_Detail extends StatefulWidget {
  const product_Detail({super.key});

  @override
  State<product_Detail> createState() => _product_DetailState();
}

class _product_DetailState extends State<product_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Big Image

            Image.asset(
              'assets/Shirt.png',
              height: 400, // Adjust the height as needed
              width: 400, // Adjust the width as needed
              fit: BoxFit.contain, // Adjust the BoxFit as needed
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Color: '),
                          ),
                          Text(
                            'White',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Image.asset('assets/Colour.png'),
                      Text(
                        'Allen Solly Men T-Shirt',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text('₹4,850',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(
                            width: 10,
                          ),
                          Text('30% Off'),
                        ],
                      ),
                      Text('MRP ₹7,000 Inclusive of all taxes'),
                      Text('Description',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 190,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => (Cart())),
                                  );
                                },
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                height: 70,
                                width: 185,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                            
                                    },
                                    child: Text(
                                      'Buy now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                )),
                          )
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
