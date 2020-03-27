import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails//CoockerDetails.dart';
import 'package:sign_up/screens/home/devices.dart';

class coocker extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<coocker> {
  var product_list = [
    {
      "name": "Zanussi",
      "picture": "images/a.jpg",
      "price": "3898 EP",
    },
    {
      "name": "Kiriazy",
      "picture": "images/b.jpg",
      "price": "5444 Ep",
    },
    {
      "name": "Cook Chef",
      "picture": "images/c.jpg",
      "price": "1299 EP",
    },
    {
      "name": " Unionair",
      "picture": "images/d.jpg",
      "price": "5599 EP",
    },
    {
      "name": "Cook Chef1",
      "picture": "images/e.jpg",
      "price": "1299 EP",
    },
    {
      "name": "Unionair1",
      "picture": "images/f.jpg",
      "price": "1799 EP",
    },
    {
      "name": "White Point",
      "picture": "images/g.jpg",
      "price": "3094 EP",
    },
    {
      "name": " Unionair2",
      "picture": "images/h.jpg",
      "price": "1800 EP",
    },
    {
      "name": " White Point1",
      "picture": "images/i.jpg",
      "price": "3049 EP",
    },
    {
      "name": " Kitchen Line",
      "picture": "images/j.jpg",
      "price": "2900 EP",
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
                'Coockers',
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
                    builder: (context) => CoocersInfo(),
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
