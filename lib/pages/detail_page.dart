import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const id = '/detail_page';

  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  int zikr1 = 0;

  void zikrlar() {
    setState(() {
      zikr1++;
      print(zikr1);
      if (zikr1 == 34) {
        zikr1 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/last.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child: Text(
              'zikr: $zikr1 ',
              style: const TextStyle(color: Colors.cyanAccent, fontSize: 50),
            )),
            Center(
              child: Column(
                children: [

                  Container(
                    color: Colors.cyanAccent,
                    width: 300,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'SubhanAlloh',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                  ),

                  Container(
                    color: Colors.white,
                    width: 300,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Alhamdulillah',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),

                  Container(
                    color: Colors.lightGreenAccent,
                    width: 300,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Allohu Akbar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: zikrlar,
          child: const Icon(
            Icons.add,
            size: 50,
          )),
    );
  }
}
