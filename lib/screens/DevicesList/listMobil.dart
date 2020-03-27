import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails//MobileDetails.dart';

class mobil extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<mobil> {
  var product_list = [
    {
      "name": "Appel1", //iphone 11 Pro Max
      "picture": "mobil/m1.jpg",
      "price": "21999 EP",
    },
    {
      "name": "Appel2",
      "picture": "mobil/m2.jpg",
      "price": "6929 Ep",
    },
    {
      "name": "Redmi Note8",
      "picture": "mobil/m3.jpg",
      "price": "2880 EP",
    },
    {
      "name": "Honor",
      "picture": "mobil/m4.jpg",
      "price": "1533 EP",
    },
    {
      "name": "Samsung1",
      "picture": "mobil/m5.jpg",
      "price": "2870 EP",
    },
    {
      "name": "Nokia",
      "picture": "mobil/m6.jpg",
      "price": "1333 EP",
    },
    {
      "name": "infinix",
      "picture": "mobil/m7.jpg",
      "price": "2616 EP",
    },
    {
      "name": "Oppo",
      "picture": "mobil/m8.jpg",
      "price": "5125 EP",
    },
    {
      "name": "XIAOMI",
      "picture": "mobil/m9.jpg",
      "price": "2880 EP",
    },
    {
      "name": "Samsung2",
      "picture": "mobil/m10.jpg",
      "price": "3444 EP",
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
                'Mobile ',
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
                    builder: (context) => MobilesInfo(),
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
