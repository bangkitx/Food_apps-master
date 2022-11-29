import 'package:flutter/material.dart';

class DetailKelompok extends StatelessWidget {
  DetailKelompok({
    required this.name,
    required this.nim,
    required this.desc,
    required this.bidang,
  });

  String name;
  String nim;
  String bidang;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: const Text('Detail Mahasiswa'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 50,
                  child: Icon(
                    Icons.people_alt_rounded,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  nim,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  bidang,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
