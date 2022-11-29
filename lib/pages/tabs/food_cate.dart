import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../category_detail.dart';

class CategoryFood extends StatelessWidget {
  const CategoryFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: const Text('Food Cateogry'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length - 1,
              itemBuilder: (context, posisi) {
                int index = posisi + 1;
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CategoryDetails(
                            title: snapshot.data![index]['strCategory'],
                            thumb: snapshot.data![index]['strCategoryThumb'],
                            desc: snapshot.data![index]
                                ['strCategoryDescription'],
                          );
                        },
                      ),
                    );
                  },
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            snapshot.data![index]['strCategoryThumb'])),
                    title: Text(
                      snapshot.data![index]['strCategory'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
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
      .get(Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));
  var response = json.decode(result.body)['categories'];
  return response;
}
