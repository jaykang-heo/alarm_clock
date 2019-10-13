import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:math";
import 'package:ui_clock_and_alarm/main.dart';
final mathcontrol1 = TextEditingController();
final mathcontrol2 = TextEditingController();
final mathcontrol3 = TextEditingController();
final mathcontrol4 = TextEditingController();
final mathcontrol5 = TextEditingController();

int leettotal = 0;
int success = 0;
var check_list = <int>[];
bool succeeded = true;
bool succeeded1 = true;
bool succeeded2 = true;
bool succeeded3 = true;
bool succeeded4 = true;

List<Widget> math_problems = [
  // 1
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              leettotal+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(leettotal);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: "Find the angle between \n the vectors [-1, 1, 2] and [2, 1, -1]",
    ),),
  // 2
//  TextFormField(
//    style: new TextStyle(color: (succeeded1) ? Colors.white : Colors.black),
//    controller: mathcontrol2,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded1) ? Colors.white : Colors.red,
//          onPressed: (){
//            if (mathcontrol2.text == "(1/9)*[[1], [-2], [2]]" && !check_list.contains(1)) {
//              leettotal+=1;
//              success += 1;
//              check_list.add(1);
//              mathcontrol1.clear();
//              succeeded1 = false;
//              print(leettotal);
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "Find the projection \n of v = [[1], [1], [1]] onto u = [[1], [-2], [2]]",
//    ),),
//  // 3
//  TextFormField(
//    style: new TextStyle(color: (succeeded2) ? Colors.white : Colors.black),
//    controller: mathcontrol3,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded2) ? Colors.white : Colors.red,
//          onPressed: (){
//            if (mathcontrol3.text == "[[-2], [1/5^2], [0]] and [[-2/5^2], [-1/5^2], [0]]" && !check_list.contains(2)) {
//              leettotal+=1;
//              success += 1;
//              check_list.add(2);
//              mathcontrol1.clear();
//              succeeded2 = false;
//              print(leettotal);
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "Find a unit vector in \n the xy-plane that is orthogonal to [[1], [2], [3]]",
//    ),),
//  // 4
//  TextFormField(
//    style: new TextStyle(color: (succeeded3) ? Colors.white : Colors.black),
//    controller: mathcontrol4,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded3) ? Colors.white : Colors.red,
//          onPressed: (){
//            if (mathcontrol4.text == "7" && !check_list.contains(3)) {
//              leettotal+=1;
//              success += 1;
//              check_list.add(3);
//              mathcontrol1.clear();
//              succeeded3 = false;
//              print(leettotal);
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "Find the general equation \n of the plane through the point (3, 2, 5) that \n is parallel to the plane whose general equation is 2x + 3y - z = 0",
//    ),),
//  // 5
//  TextFormField(
//    style: new TextStyle(color: (succeeded4) ? Colors.white : Colors.black),
//    controller: mathcontrol5,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded4) ? Colors.white : Colors.red,
//          onPressed: (){
//            if (mathcontrol5.text == "3" && !check_list.contains(4)) {
//              leettotal+=1;
//              success += 1;
//              check_list.add(4);
//              mathcontrol1.clear();
//              succeeded4 = false;
//              print(leettotal);
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "Find the general equation of \n the plane through the points A(1, 1, 0), B(1, 0, 1), and C(0, 1, 2)",
//    ),),
//  // 6
//  TextFormField(
//    style: new TextStyle(color: Colors.white),
//    controller: mathcontrol1,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded) ? Colors.white : Colors.black,
//          onPressed: (){
//            if (mathcontrol1.text == "x = [[8], [11]]" && !check_list.contains(5)) {
//              total+=1;
//              success += 1;
//              check_list.add(5);
//              mathcontrol1.clear();
//              succeeded = true;
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "If u = [[-1],[5]], v = [[3],[2]], and 2x + u = 3(x-v), solve for x",
//    ),),
//  // 7
//  TextFormField(
//    style: new TextStyle(color: Colors.white),
//    controller: mathcontrol1,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded) ? Colors.white : Colors.black,
//          onPressed: (){
//            if (mathcontrol1.text == "x = [[8], [11]]" && !check_list.contains(6)) {
//              total+=1;
//              success += 1;
//              check_list.add(6);
//              mathcontrol1.clear();
//              succeeded = true;
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "If u = [[-1],[5]], v = [[3],[2]], and 2x + u = 3(x-v), solve for x",
//    ),),
//  // 8
//  TextFormField(
//    style: new TextStyle(color: Colors.white),
//    controller: mathcontrol1,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded) ? Colors.white : Colors.black,
//          onPressed: (){
//            if (mathcontrol1.text == "x = [[8], [11]]" && !check_list.contains(7)) {
//              total+=1;
//              success += 1;
//              check_list.add(7);
//              mathcontrol1.clear();
//              succeeded = true;
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "If u = [[-1],[5]], v = [[3],[2]], and 2x + u = 3(x-v), solve for x",
//    ),),
//  // 9
//  TextFormField(
//    style: new TextStyle(color: Colors.white),
//    controller: mathcontrol1,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded) ? Colors.white : Colors.black,
//          onPressed: (){
//            if (mathcontrol1.text == "x = [[8], [11]]" && !check_list.contains(8)) {
//              total+=1;
//              success += 1;
//              check_list.add(8);
//              mathcontrol1.clear();
//              succeeded = true;
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "If u = [[-1],[5]], v = [[3],[2]], and 2x + u = 3(x-v), solve for x",
//    ),),
//  // 10
//  TextFormField(
//    style: new TextStyle(color: Colors.white),
//    controller: mathcontrol1,
//    decoration: InputDecoration(
//      suffixIcon: IconButton(
//          icon: Icon(Icons.lock_open),
//          color: (succeeded) ? Colors.white : Colors.black,
//          onPressed: (){
//            if (mathcontrol1.text == "x = [[8], [11]]" && !check_list.contains(9)) {
//              total+=1;
//              success += 1;
//              check_list.add(9);
//              mathcontrol1.clear();
//              succeeded = true;
//            }
//          }),
//      hintStyle: TextStyle(color: Colors.white),
//      labelStyle: TextStyle(color: Colors.white),
//      labelText: "If u = [[-1],[5]], v = [[3],[2]], and 2x + u = 3(x-v), solve for x",
//    ),),


];

List<Widget> create_math_list(number){
  number = int.parse(number);
  var final_list = <Widget>[];
  final _random = new Random();
  math_problems.shuffle();
  final_list = math_problems.sublist(0, number);
//  for (int i=0;i<number;i++){
//    int num = _random.nextInt(5);
//    print(num);
//    final_list.add(math_problems[num]) ;
//  }
  return final_list;
}