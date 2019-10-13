import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ui_clock_and_alarm/widgets/alarm_item.dart';
import 'package:ui_clock_and_alarm/widgets/problem_items.dart';
import 'package:ui_clock_and_alarm/widgets/math_problems.dart';
import 'package:ui_clock_and_alarm/widgets/math_solutions.dart';
import "dart:math";

void main() => runApp(AlarmApp());

class AlarmApp extends StatefulWidget {
  _AlarmAppState createState() => _AlarmAppState();
}

class _AlarmAppState extends State<AlarmApp> with SingleTickerProviderStateMixin{

  String _hourString;
  String _minuteString;
  String _timeString;
  String _problemType;
  String _numberString = '0';
  Timer _timer;
  TabController _tabController;
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  var list = <Widget>[];
  var leetcode_list = <Widget>[];
  var math_list = <Widget>[];
  var alarm_list = <Widget>[];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
//    _tabController.addListener(_handleTabIndex);

    _timeString = _formatDateTime(DateTime.now());
   Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
   setText();
  }

  void setText(){
    list.add(TextField(
      style: new TextStyle(color: Colors.white),
      controller: myController,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Enter hour'
      ),));
    list.add(TextField(
      style: new TextStyle(color: Colors.white),
      controller: myController1,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Enter minutes'
      ),));
    list.add(TextField(
      style: new TextStyle(color: Colors.white),
      controller: myController2,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Problem Type'
      ),));
    list.add(TextField(
      style: new TextStyle(color: Colors.white),
      controller: myController3,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Enter number of problems'
      ),));
  }

   @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  void success(type){
    bool result = false;
    if (type == "math" && total == int.parse(_numberString)) {
      result = true;
    }
    if (type == "leetcode" && total == int.parse(_numberString)) {
      result = true;
    }
    setState(() {
      if (result == true ) _tabController.animateTo(0);
      total = 0;
    });
  }

  void updateList(hour, minute, number, type, context){
    bool enabled = true;
    print(type);
    if (type == "math") math_list = create_math_list(number);
    else if (type == "leetcode") leetcode_list = create_list(number);
    if (hour.length ==1) hour  = "0"+hour;
    if (minute.length == 1) minute = "0"+minute;
    String total = hour+":"+minute;
    if (list.length <5){
      setDelay(hour, minute, type, context);
      setState(() {
        list = List.from(list);
        list.add(alarmItem(total, number, enabled));
        leetcode_list = List.from(leetcode_list);
        math_list = List.from(math_list);
      });
    }
  }

  void deleteList(){
    if (list.length >4){
      setState(() {
        list = List.from(list);
        list.removeLast();
      });
    }
  }

  void setDelay(hour, minute, type, context){
    _timer = new Timer(const Duration(seconds: 3), () {
      int val = 0;
      print(type);
      if (type == "math") val = 2;
      else if (type == "leetcode") val = 1;
      setState(() {
        _tabController.animateTo(val);
      });
    });
  }

  void cancelDelay(){
    _timer.cancel();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Container(
            color: Color(0xff1B2C57),
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Container(
                    child: ListView(
                      children: list,
                    )
                ),
                Container(
                    child: ListView(
                      children: leetcode_list,
                    )
                ),
                Container(
                    child: ListView(
                      children: math_list,
                    )
                ),
                Icon(Icons.timer),
              ],
            ),
          ),
            floatingActionButton: Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left:31),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      onPressed:() {
                        if (_tabController.index == 0){
                          _hourString = myController.text;
                          _minuteString = myController1.text;
                          _numberString = myController3.text;
                          _problemType = myController2.text;
                          myController.clear();
                          myController1.clear();
                          myController2.clear();
                          myController3.clear();
                          updateList(_hourString, _minuteString, _numberString, _problemType, context);
                        }
                        if(total == int.parse(_numberString))success("math");
                        },
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                      )),
                  ),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed:(){
                      if (_tabController.index == 0){
                        deleteList();
                        cancelDelay();
                      }
                    },
                    child: Icon(Icons.remove),),
                ),
              ],
            )
        ),
      ),
    );
  }

}