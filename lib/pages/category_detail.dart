import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryDetails extends StatefulWidget {
  CategoryDetails({
    required this.title,
    required this.thumb,
    required this.desc,
  });

  String title;
  String thumb;
  String desc;

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: Text('Details'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.thumb),
              const SizedBox(height: 20),
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text('Waktu memasak :  ${widget.desc}'),
            ],
          ),
        ),
      ),
    );
  }
}
