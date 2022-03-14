import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/menu.dart';
import 'detail.dart';

class DetailKeranjang extends StatelessWidget {
  // final Menu menu;
  final String image;
  final String name;
  final String desc;
  final String category;
  final double ratings;
  final int price;
  final int reviewer;
  final int sold;

  const DetailKeranjang({
    Key? key,
    required this.image,
    required this.name,
    required this.desc,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,
    this.price=0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
              Text("Isi Keranjang :", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16),
              Image.network(image),
              SizedBox(height: 16),
              Text("${price}"),
              SizedBox(height: 10),
              _beliButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _beliButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,
          vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text(' Beli Barang'),
      ),
    );
  }

}