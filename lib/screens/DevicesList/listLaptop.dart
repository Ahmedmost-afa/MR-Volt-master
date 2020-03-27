import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails//LaptopDetails.dart';
import 'package:sign_up/screens/home/devices.dart';

class laptop extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<laptop> {
  var product_list = [
    {
      "name": "Lenovo",
      "picture": "laptop/l1.jpg",
      "price": "11199 EP",
    },
    {
      "name": "DELL",
      "picture": "laptop/l2.jpg",
      "price": "15666 Ep",
    },
    {
      "name": "DELL1",
      "picture": "laptop/l3.jpg",
      "price": "12199 EP",
    },
    {
      "name": " DELL2",
      "picture": "laptop/l4.jpg",
      "price": "11299 EP",
    },
    {
      "name": "DELL3",
      "picture": "laptop/l5.jpg",
      "price": "8499 EP",
    },
    {
      "name": "Lenovo1",
      "picture": "laptop/l6.jpg",
      "price": "11199 EP",
    },
    {
      "name": "DELL4",
      "picture": "laptop/l7.jpg",
      "price": "16777 EP",
    },
    {
      "name": " Lenovo2",
      "picture": "laptop/l8.jpg",
      "price": "19120 EP",
    },
    {
      "name": " Lenovo3",
      "picture": "laptop/l9.jpg",
      "price": "7999 EP",
    },
    {
      "name": "Microsoft",
      "picture": "laptop/l10.jpg",
      "price": "9999 EP",
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
                'Laptops',
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
                    builder: (context) => LaptopsInfo(),
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
