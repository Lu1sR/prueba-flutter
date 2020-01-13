import 'package:flutter/material.dart';
import 'package:flash_chat/models/Oferta.dart';

class Details extends StatelessWidget {
  final Oferta oferta;
  Details(this.oferta);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'images/${oferta.image}',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${oferta.days} days',
                          style: TextStyle(color: Colors.grey))
                    ],
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: '${oferta.place} \n',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  'Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type')
                        ],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.blueGrey[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Descuento\n',
                                style: TextStyle(fontSize: 18)),
                            TextSpan(
                                text: '15\%',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold))
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Obtener oferta',
                            style: TextStyle(color: Colors.lightBlueAccent),
                          ),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 20,
            left: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}
