import 'package:flutter/material.dart';
import 'package:my_first_real_project/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/last_last.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
                },
                color: Colors.blue,
                child: const Text(
                  'Tasbih',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
