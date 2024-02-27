import 'package:ecom/Product_Detail.dart';
import 'package:ecom/ViewAll_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> products = [
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Shirt.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
  ];
  List<Map<String, dynamic>> products1 = [
    {
      'Image': 'assets/Sarees.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Sarees.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Sarees.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    },
    {
      'Image': 'assets/Sarees.png',
      'ProductName': 'Banaras silk palace',
      'Price': '₹2317',
    }
  ];

  // Add more products as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 20, 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Search',
                                  hintText: 'Search Product',
                                  hintStyle: TextStyle(color: Colors.black26),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  prefixIcon: Icon(Icons.search),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.notification_important_sharp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'assets/Banner.jpg',
                            width: 380,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'T Shirts',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => view_All()),
                  );
                }, child: Text('View All'))
              ],
            ),

            // Display the list of products
            Container(
              height: 200, // Set the height of the ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // Set the scroll direction to horizontal
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150, // Set the width of each card
                    margin: EdgeInsets.all(7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (product_Detail())),
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              products[index]['Image'],
                              height: 120, // Set the height of the image
                            ),
                            Text(products[index]['ProductName']),
                            Text(products[index]['Price']),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sarees',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (view_All())),
                  );
                }, child: Text('View All'))
              ],
            ),
            Container(
              height: 200, // Set the height of the ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // Set the scroll direction to horizontal
                itemCount: products1.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150, // Set the width of each card
                    margin: EdgeInsets.all(7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (product_Detail())),
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              products1[index]['Image'],
                              height: 120, // Set the height of the image
                            ),
                            Text(products1[index]['ProductName']),
                            Text(products1[index]['Price']),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('shirts',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),

                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (view_All())),
                  );
                }, child: Text('View All'))
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: EdgeInsets.all(7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (product_Detail())),
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              products[index]['Image'],
                              height: 120, // Set the height of the image
                            ),
                            Text(products[index]['ProductName']),
                            Text(products[index]['Price']),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
