// import 'package:all_widget/widget_001.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const Widget001());
//   }
// }

import 'dart:io';

class Person {
  int id;
  String name;
  String gender;

  // Default constructor
  Person()
      : id = 0,
        name = 'N/A!',
        gender = 'N/A!';

  // Parameterized constructor
  Person.withData(this.id, this.name, this.gender);

  // Input method
  void input() {
    stdout.write('Enter Id          : ');
    id = int.parse(stdin.readLineSync()!);
    stdout.write('Enter Name    : ');
    name = stdin.readLineSync()!;
    stdout.write('Enter Gender : ');
    gender = stdin.readLineSync()!;
  }

  // Output method
  void output() {
    stdout.write('$id\t$name\t$gender');
  }
}

class Student extends Person {
  Student() : super();

  Student.withData(super.id, super.name, super.gender)
      : super.withData();

  @override
  void input() {
    super.input();
    stdout.write('Enter Score : ');
  }

  // Override output method
  @override
  void output() {
    super.output();
  }
}

void main() {
  Student().output();
}
