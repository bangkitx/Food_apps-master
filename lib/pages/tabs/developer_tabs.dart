import 'package:flutter/material.dart';

import '../other_dev.dart';

class DeveloperTabs extends StatelessWidget {
  const DeveloperTabs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: const Text('Developers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Container(
                width: 150,
                child: Image.asset('assets/kkung.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Kakung Bangkit P',
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Nim'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  21120120140130'),
                      ),
                    ],
                  ),
                ),
                // bagian alamat
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Alamat'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  Jalan Brotojoyo barat II'),
                      ),
                    ],
                  ),
                ),
                // bagian emial
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Email'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  bkakung69@icloud.com'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Nomor Telp'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  087881998221'),
                      ),
                    ],
                  ),
                ),

                // nomor Ultah
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Ulang Tahun'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  29 september'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Kerjaan'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  hanya tuhan yang tau'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OtherDevs();
                    }));
                  },
                  child: const Text('Other dev'),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
