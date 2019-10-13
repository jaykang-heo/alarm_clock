import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:math";

final mathcontrol1 = TextEditingController();
final mathcontrol2 = TextEditingController();
final mathcontrol3 = TextEditingController();
final mathcontrol4 = TextEditingController();
final mathcontrol5 = TextEditingController();

int total = 0;
int success = 0;
var check_list = <int>[];
bool succeeded = true;
bool succeeded1 = true;
bool succeeded2 = true;
bool succeeded3 = true;
bool succeeded4 = true;

List<Widget> problems = [
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: "Two Sum",
    ),),
  // 2
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Longest Substring Without Repeating Characters',
    ),),
  // 3
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Longest palindromic Substring',
    ),),
  // 4
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Container With Most Water',
    ),),
  // 5        hintText: 'Container With Most Water'
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: '3Sum',
    ),),
  // 6
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Remove Nth Node From End of List',
    ),),
  // 7
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Valid Parentheses',
    ),),
  // 8
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Merge Two Sorted List',
    ),),
  // 9
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Merge k Sorted Lists',
    ),),
  // 10
  TextFormField(
    style: new TextStyle(color: (succeeded) ? Colors.white : Colors.black),
    controller: mathcontrol1,
    decoration: InputDecoration(
      suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          color: (succeeded) ? Colors.white : Colors.red,
          onPressed: (){
            if (mathcontrol1.text == "120 degree" && !check_list.contains(0)) {
              total+=1;
              success += 1;
              check_list.add(0);
              mathcontrol1.clear();
              succeeded = false;
              print(total);
            }
          }),
      labelStyle: TextStyle(color: (succeeded) ? Colors.white : Colors.black),
      labelText: 'Search in Rotated Sorted Array',
    ),),
  // 11
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 12
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 13
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 14
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 15
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 16
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 17
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 18
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 19
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 20
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 21
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 22
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 23
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 24
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 25
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 26
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 27
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 28
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 29
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 30
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 31
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 32
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 33
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 34
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 35
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 36
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 37
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 38
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 39
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 40
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 41
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 42
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 43
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 44
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 45
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 46
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 47
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 48
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 49
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 50
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 51
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 52
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 53
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 54
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 55
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 56
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 57
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 58
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 59
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 60
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 61
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 62
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 63
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 64
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 65
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 66
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 67
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 68
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 69
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 70
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 71
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 72
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 73
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 74
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
//  // 75
//  TextField(
//    style: new TextStyle(color: Colors.white),
//    decoration: InputDecoration(
//        hintStyle: TextStyle(color: Colors.white),
//        hintText: 'Two Sum'
//    ),),
];



List<Widget> create_list(number){
  var final_list = <Widget>[];
  number = int.parse(number);
  final _random = new Random();
  for (int i=0;i<number;i++){
    int num = _random.nextInt(9);
    print(num);
    final_list.add(problems[num]);
  }
  return final_list;
}