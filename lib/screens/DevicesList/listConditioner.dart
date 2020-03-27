import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails//FridgeDetails.dart';
import 'package:sign_up/screens/DevicesDetails/CondonerDetails.dart';
import 'package:sign_up/screens/home/devices.dart';

class Conditioner extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Conditioner> {
  var product_list = [
    {
      "name": "LG1",
      "picture": "images/Conditioner.jpg",
      "price": "20990 EP",
    },
    {
      "name": "LG2",
      "picture": "images/Conditioner.jpg",
      "price": "17480 Ep",
    },
    {
      "name": "Passap",
      "picture": "images/Conditioner.jpg",
      "price": "3399 EP",
    },
    {
      "name": "Beko",
      "picture":
      "images/Conditioner.jpg",
      "price": "16145 EP",
    },
    {
      "name": " Electrostar",
      "picture": "images/Conditioner.jpg",
      "price": "3999 EP",
    },
    {
      "name": " Alaska",
      "picture": "images/Conditioner.jpg",
      "price": "3198 EP",
    },
    {
      "name": "Toshiba",
      "picture": "images/Conditioner.jpg",
      "price": "5665 EP",
    },
    {
      "name": " Toshiba1",
      "picture": "images/Conditioner.jpg",
      "price": "5000 EP",
    },
    {
      "name": "Sharp",
      "picture": "images/Conditioner.jpg",
      "price": "8399 EP",
    },
    {
      "name": "Unionair",
      "picture": "images/Conditioner.jpg",
      "price": "3044 EP",
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
                'Conditioners',
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
                    builder: (context) => ConditionersInfo(),
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
