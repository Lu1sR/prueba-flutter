import 'package:flutter/material.dart';
import 'package:flash_chat/models/Oferta.dart';
import 'image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Oferta> ofertas = [
    Oferta(place: 'Austia', image: '1.jpg', days: 7),
    Oferta(place: 'India', image: '2.jpg', days: 12),
    Oferta(place: 'Bali', image: '3.jpg', days: 3),
    Oferta(place: 'Austia', image: '1.jpg', days: 7),
    Oferta(place: 'India', image: '2.jpg', days: 12),
    Oferta(place: 'Bali', image: '3.jpg', days: 3),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ofertas.length,
            itemBuilder: (_, index) {
              return ImageCard(
                oferta: ofertas[index],
                name: ofertas[index].place,
                days: ofertas[index].days,
                picture: ofertas[index].image,
              );
            }));
  }
}
