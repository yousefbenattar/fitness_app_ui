import 'package:flutter/material.dart';
SizedBox box =const SizedBox(height: 20);
class Result {
  int number ;
  String text ;
  Icon icon ;
  Result({required this.number,required this.text,required this.icon});
}

List<Result> list = [
  Result(number: 65, text: "Workouts", icon:const Icon(Icons.fitness_center_outlined)),
  Result(number: 65, text: "Kcal", icon:const Icon(Icons.fireplace_sharp)),
  Result(number: 65, text: "Minuts", icon:const Icon(Icons.timer)),
];

class Workout {
  String name;
  String type;
  String level;
  String img;
  Workout({required this.name,required this.type,required this.level,required this.img});
}
List<Workout> workouts = [
  Workout(name: "6/8 workouts", type: "Arm", level: "Beginner",img :"assets/1.jpg"),
  Workout(name: "16 week", type: "Leg", level: "Beginner",img : "assets/2.jpg"),
  Workout(name: "32 week", type: "head", level: "Beginner",img : "assets/3.jpg"),
  Workout(name: "32 week", type: "head", level: "Beginner",img : "assets/4.jpg"),
];