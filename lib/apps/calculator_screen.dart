import 'package:expert_flutter_frontend_dev/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = "0";
  String result = "0";
  String expression = "0";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  onTapped(String buttonText) {
    setState(() {
      if (buttonText == "c") {
        equation = "0";
        result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      } else if (buttonText == "⌫") {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 38.0;
        resultFontSize = 48.0;
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll('%', '*(1/100)');


        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel contextModel = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, contextModel)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: MyColors.calculatorScreen,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:48.0),
              child: Container(
                height: size.height * 0.3,
                child: Scaffold(
                  backgroundColor: MyColors.calculatorScreen,
                  body: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: Text(
                          equation,
                          style: TextStyle(fontSize: equationFontSize, color: Colors.white),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: Text(
                          result,
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: resultFontSize, color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // height: size.height*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                color: MyColors.calculatorScreen,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons(
                        onTap: ()=>onTapped('c'),
                        label: 'c',
                        isTopLeftBorderShow: true,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('÷'),
                        label: '÷',
                        labelColor: MyColors.calculatorYellow,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('×'),
                        label: '×',
                        labelColor: MyColors.calculatorYellow,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('⌫'),
                        label: '⌫',
                        labelColor: MyColors.calculatorYellow,
                        isTopRightBorderShow: true,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons(
                        onTap: ()=>onTapped('7'),
                        label: '7',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('8'),
                        label: '8',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('9'),
                        label: '9',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('-'),
                        label: '-',
                        labelColor: MyColors.calculatorYellow,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons(
                        onTap: ()=>onTapped('4'),
                        label: '4',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('5'),
                        label: '5',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('6'),
                        label: '6',
                        buttonColor: MyColors.calculatorButton,
                      ),
                      Buttons(
                        onTap: ()=>onTapped('+'),
                        label: '+',
                        labelColor: MyColors.calculatorYellow,
                        buttonColor: MyColors.calculatorFunctionButton,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Buttons(
                                onTap: ()=>onTapped('1'),
                                label: '1',
                                buttonColor: MyColors.calculatorButton,
                              ),
                              Buttons(
                                onTap: ()=>onTapped('2'),
                                label: '2',
                                buttonColor: MyColors.calculatorButton,
                              ),
                              Buttons(
                                onTap: ()=>onTapped('3'),
                                label: '3',
                                buttonColor: MyColors.calculatorButton,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Buttons(
                                onTap: ()=>onTapped('%'),
                                label: '%',
                                buttonColor: MyColors.calculatorButton,
                              ),
                              Buttons(
                                onTap: ()=>onTapped('0'),
                                label: '0',
                                buttonColor: MyColors.calculatorButton,
                              ),
                              Buttons(
                                onTap: ()=>onTapped('.'),
                                label: '.',
                                buttonColor: MyColors.calculatorButton,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Buttons(
                        height: 200.0,
                        onTap: ()=>onTapped('='),
                        label: '=',
                        buttonColor: MyColors.calculatorYellow,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class Buttons extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Function onTap;
  final Color labelColor;
  final bool isTopRightBorderShow;
  final bool isTopLeftBorderShow;
  final double height;
  final double width;
  const Buttons(
      {Key key,
      this.label,
      this.buttonColor,
      this.onTap,
      this.labelColor,
      this.isTopRightBorderShow = false,
      this.isTopLeftBorderShow = false,
      this.height = 100.0,
      this.width = 100.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 2.0,
      hoverColor: Colors.yellow,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 1.4, right: 1.4, top: 2.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: isTopRightBorderShow
                  ? Radius.circular(30.0)
                  : Radius.circular(0.0),
              topLeft: isTopLeftBorderShow
                  ? Radius.circular(30.0)
                  : Radius.circular(0.0),
            ),
            color: buttonColor ?? MyColors.calculatorScreen,
          ),
          child: Center(
            child: Text(
              label ?? 'c',
              style: TextStyle(
                  fontSize: 30.0,
                  color: labelColor ?? Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
