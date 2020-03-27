import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails/WashingDetails.dart';
import 'package:sign_up/screens/home/devices.dart';

class washer extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<washer> {
  var product_list = [
    {
      "name": "White Point1",
      "picture": "washing/w1.jpg",
      "price": "3999 EP",
    },
    {
      "name": "White Point2",
      "picture": "washing/w2.jpg",
      "price": "3144 Ep",
    },
    {
      "name": "Toshipa",
      "picture": "washing/w3.jpg",
      "price": "1680 EP",
    },
    {
      "name": "Fersh1",
      "picture": "washing/w4.jpg",
      "price": "473 EP",
    },
    {
      "name": "White Point3",
      "picture": "washing/w5.jpg",
      "price": "3699 EP",
    },
    {
      "name": "Fresh2",
      "picture": "washing/w6.jpg",
      "price": "999 EP",
    },
    {
      "name": "Fersh3",
      "picture": "washing/w7.jpg",
      "price": "799 EP",
    },
    {
      "name": " LG",
      "picture": "washing/w8.jpg",
      "price": "23800 EP",
    },
    {
      "name": "Fres4",
      "picture": "washing/w9.jpg",
      "price": "2044 EP",
    },
    {
      "name": "Zanussi",
      "picture": "washing/w10.jpg",
      "price": "6999 EP",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
//              leading: IconButton(
//                icon: Icon(Icons.arrow_back),
//                alignment: Alignment.topLeft,
//                padding: EdgeInsets.all(15),
//                onPressed: () =>Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) => device(),
//                    )),
//              ),
              title: Text(
                'Wash Machine',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  letterSpacing: 3,
                  fontSize: 25,
                ),
              ),
            ),
            body: GridView.builder(
                itemCount: product_list.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Single_prod(
                      prod_name: product_list[index]['name'],
                      prod_pricture: product_list[index]['picture'],
                      prod_price: product_list[index]['price'],
                    ),
                  );
                })));
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WashingsInfo(),
                  )),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      title: Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent),
                      ),
                      subtitle: Text(
                        "$prod_price",
                        style: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
