import 'dart:developer';
import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/commons/constants.dart';
import '../widgets/organisms/ui_helper.dart';

@RoutePage()
class SimpleCalculatorPage extends StatefulWidget {
  const SimpleCalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() => SimpleCalculatorPageState();
}

class SimpleCalculatorPageState extends State<SimpleCalculatorPage> {
  var num1 = 0,
      num2 = 0,
      ans = 0;

  var operator = '+';
  final TextEditingController controllerOne = new TextEditingController(text: '0');
  final TextEditingController controllerTwo = new TextEditingController(text: '0');

  void operation(int num1, int num2) {
    setState(() {
      num1 = int.parse(controllerOne.text);
      num2 = int.parse(controllerTwo.text);

      switch (operator) {
        case '+':
          ans = num1 + num2;
        case '-':
          ans = num1 - num2;
        case 'x':
          ans = num1 * num2;
        case '/':
          ans = num1 ~/ num2;

        case '^':
          var power = pow(num1, num2);
          ans = power.toInt();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          centerTitle: false,
          title: const Text('Simple Calculator'),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('CHOOSE TYPE', style: TextStyle(color: Colors.greenAccent)),
              ),
            ),
            SafeArea(
              child: Wrap(spacing: 8.0, runSpacing: 4, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            Constants.operationList.first,
                            style: TextStyle(fontSize: UIHelper.setSp(20)),
                          ),
                        ),
                        onTap: () =>
                        {
                          setState(() {
                            operator = '+';
                          })
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            Constants.operationList[1],
                            style: TextStyle(fontSize: UIHelper.setSp(20)),
                          ),
                        ),
                        onTap: () =>
                        {
                          setState(() {
                            operator = '-';
                          })
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          Constants.operationList[2],
                          style: TextStyle(fontSize: UIHelper.setSp(20)),
                        ),
                      ),
                      onTap: () =>
                      {
                        setState(() {
                          operator = '*';
                        })
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            Constants.operationList[3],
                            style: TextStyle(fontSize: UIHelper.setSp(20)),
                          ),
                        ),
                        onTap: () =>
                        {
                          setState(() {
                            operator = '/';
                          })
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          Constants.operationList[4],
                          style: TextStyle(fontSize: UIHelper.setSp(20)),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          operator = '^';
                        });
                      },
                    ),
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  height:  UIHelper.mediaWidth(context, 0.15),
                  width: UIHelper.mediaWidth(context, 0.2),
                  decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(fontSize: UIHelper.setSp(30)),
                    controller: controllerOne,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '',
                    ),
                  ),
                ),
                Text('$operator', style: TextStyle(fontSize: UIHelper.setSp(30))),
                Container(
                  height:  UIHelper.mediaWidth(context, 0.15),
                  margin: const EdgeInsets.all(10.0),
                  width: UIHelper.mediaWidth(context, 0.2),
                  decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(fontSize: UIHelper.setSp(30)),
                    controller: controllerTwo,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '',
                    ),
                  ),
                ),
                Text('=', style: TextStyle(fontSize: UIHelper.setSp(30))),
                Text('$ans', style: TextStyle(fontSize: UIHelper.setSp(30))),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:10), padding: EdgeInsets.all(UIHelper.setSp(8)),

              color: Colors.green[50],
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon( Icons.info_outlined,color: Colors.green[300]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8 ),
                    child: const Text('Press calculate button to get the result'),
                  ),
                ],
              ),
            ),
            Align(

              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Text('HISTORY', style: TextStyle(color: Colors.greenAccent)),
              ),
            ),

            Spacer(),
            Container(
              margin: const EdgeInsets.all(20.0),
              width: UIHelper.mediaWidth(context, 1),
              child: MaterialButton(
                child: new Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: () => operation(num1, num2),
                color: Colors.blue.shade50,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
