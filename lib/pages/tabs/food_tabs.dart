import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../detail_page.dart';

class FoodTabs extends StatelessWidget {
  const FoodTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: const Text('Food Recipe'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length - 1,
              itemBuilder: (context, posisi) {
                int index = posisi + 1;
                return InkWell(
                  onTap: () {
                    if (snapshot.data![index]['key'] == null) {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return const AlertDialog(
                              content: Text('Content Belum tersedia saat ini'),
                            );
                          });
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailFoodPage(
                              title: snapshot.data![index]['title'],
                              thumb: snapshot.data![index]['thumb'],
                              times: snapshot.data![index]['times'],
                              serving: snapshot.data![index]['serving'],
                              difficulty: snapshot.data![index]['difficulty'],
                            );
                          },
                        ),
                      );
                    }
                  },
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(snapshot.data![index]['thumb'])),
                    title: Text(
                      snapshot.data![index]['title'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      snapshot.data![index]['difficulty'],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<List<dynamic>> _getData() async {
  var result = await http
      .get(Uri.parse('https://masak-apa-tomorisakura.vercel.app/api/recipes/'));
  var response = json.decode(result.body)['results'];
  return response;
}
