# Tasbeh app

A new Flutter project.

## Getting Started

### This project is a starting point for me.

get acquainted with my program:

- [Lab: Write my first Flutter app](https://github.com/xurshid20222/my_first_real_project/edit/master/README.md)
- [My email: ](yusuvaliyevx@gmail.com)

### Pages number 2

- [ ] HomePage 1
- [ ] DetailPage 2

> Let's get acquainted with the program code:

### runApp
```flutter
import 'package:flutter/material.dart';
import 'package:my_first_real_project/pages/detail_page.dart';
import 'package:my_first_real_project/pages/home_pages.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DetailPage.id: (context) => const DetailPage(),
      },
    );
  }
}
```
### HomePage

```
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

```

### DetailPage

```
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

```

-[ ] Pictures:

![logo](https://drive.google.com/file/d/16wjB-sK2VzoQ_pql1HoLEN1wCtIl0nbh/view?usp=sharing)
![logo](https://drive.google.com/file/d/1auV3_xPfhNtTt0feEhGLCM55qp9RC1oj/view?usp=sharing)
![logo](https://drive.google.com/file/d/1vSsBdAdSGocGa00-NtO8xEjTMzFvfKMR/view?usp=sharing)



