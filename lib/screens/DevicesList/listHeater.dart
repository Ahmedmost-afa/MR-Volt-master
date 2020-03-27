import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails//HeaterDetails.dart';
import 'package:sign_up/screens/home/devices.dart';

class heater extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<heater> {
  var product_list = [
    {
      "name": "Fresh",
      "picture": "heater/h1.jpg",
      "price": "1177 EP",
    },
    {
      "name": "Unionaire",
      "picture": "heater/h2.jpg",
      "price": "998 Ep",
    },
    {
      "name": "Olympic",
      "picture": "heater/h3.jpg",
      "price": "1230 EP",
    },
    {
      "name": "Fresh1",
      "picture": "heater/h4.jpg",
      "price": "1044 EP",
    },
    {
      "name": "Olympic1",
      "picture": "heater/h5.jpg",
      "price": "1399 EP",
    },
    {
      "name": "Ariston",
      "picture": "heater/h6.jpg",
      "price": "1990 EP",
    },
    {
      "name": " Fresh2",
      "picture": "heater/h7.jpg",
      "price": "1177 EP",
    },
    {
      "name": "Olympic2",
      "picture": "heater/h8.jpg",
      "price": "1044 EP",
    },
    {
      "name": "Ariston2",
      "picture": "heater/h9.jpg",
      "price": "5500 EP",
    },
    {
      "name": "Zanussi",
      "picture": "heater/h10.jpg",
      "price": "1890 EP"
          " EP",
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
                'Heater',
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
                    builder: (context) => HeatersInfo(),
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
