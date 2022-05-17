# Tasbeh app

A new Flutter project.

## Getting Started

### This project is a starting point for me.

get acquainted with my program:

- [Lab: Write my first Flutter app](https://github.com/xurshid20222/my_first_real_project/edit/master/README.md)
- [My email: ](yusuvaliyevx@gmail.com)

### Pages number 2

> HomePage 1
>>DetailPage 2

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