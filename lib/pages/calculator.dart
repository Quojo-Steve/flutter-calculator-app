// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_element, no_leading_underscores_for_local_identifiers, dead_code

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _firstnumber = "0";
  String _operator = "";
  String _secondnumber = "";
  var answer;
  var total;

  void _assign(var _num) {
    if (_firstnumber == "0") {
      _firstnumber = "";
    }
    setState(() {
      if (_operator == "") {
        _firstnumber += _num;
      } else {
        _secondnumber += _num;
      }
    });
  }

  void _operatorfunc(var _symbol) {
    if (answer != null) {
      _firstnumber = answer;
      answer = null;
      _secondnumber = "";
    }
    setState(() {
      _operator = _symbol;
    });
  }

  void _clear() {
    setState(() {
      _firstnumber = "0";
      _operator = "";
      _secondnumber = "";
      answer = null;
    });
  }

  void _equals() {
    if (_firstnumber == "") {
      _firstnumber = "0";
    } else if (_secondnumber == "") {
      _secondnumber = "0";
    }
    switch (_operator) {
      case "+":
        total = double.parse(_firstnumber) + int.parse(_secondnumber);
        break;
      case "-":
        total = double.parse(_firstnumber) - int.parse(_secondnumber);
        break;
      case "x":
        total = double.parse(_firstnumber) * int.parse(_secondnumber);
        break;
      case "/":
        total = double.parse(_firstnumber) / int.parse(_secondnumber);
        break;
      default:
        total = double.parse(_firstnumber);
    }
    answer = total.toString();
    setState(() {
      answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            answer ?? _firstnumber + _operator + _secondnumber,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 40, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _assign("0");
                  },
                  child: Text(
                    "0",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign('1');
                  },
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign('2');
                  },
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _assign('3');
                  },
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign('4');
                  },
                  child: Text(
                    "4",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign("5");
                  },
                  child: Text(
                    "5",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _assign("6");
                  },
                  child: Text(
                    "6",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign("7");
                  },
                  child: Text(
                    "7",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _assign("8");
                  },
                  child: Text(
                    "8",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _assign("9");
                  },
                  child: Text(
                    "9",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _operatorfunc("+");
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _operatorfunc("-");
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _operatorfunc("x");
                  },
                  child: Text(
                    "x",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _operatorfunc("/");
                  },
                  child: Text(
                    "/",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _equals();
                  },
                  child: Text(
                    "=",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _clear();
              },
              child: Text("Clear",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.black)))
        ],
      )),
    );
  }
}
