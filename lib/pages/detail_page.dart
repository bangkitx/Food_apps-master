import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailFoodPage extends StatefulWidget {
  DetailFoodPage({
    required this.title,
    required this.thumb,
    required this.times,
    required this.serving,
    required this.difficulty,
  });

  String title;
  String thumb;
  String times;
  String serving;
  String difficulty;

  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
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
              Text('Waktu memasak :  ${widget.times}'),
              const SizedBox(height: 20),
              Text('Porsi : ${widget.serving}'),
              const SizedBox(height: 20),
              Text('Tingkat Kesusahan : ${widget.difficulty}')
            ],
          ),
        ),
      ),
    );
  }
}
