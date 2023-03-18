import 'package:assignment1_flutterdevcamp/model/data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Data product;
  const DetailsPage({super.key, required this.product});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.productName,
        ),
      ),
      body: Column(
        children: [
          /// The source and products widget should be wrapped with Hero widget.
          /// Hero widget takes a tag as a parameter which should be unique.
          /// The source and product should have the same tag value
          Hero(
            tag: widget.product.productName,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.product.productImage,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.product.productInfo,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
