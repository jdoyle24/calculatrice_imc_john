import 'package:calculatrice_imc_john/bottom_button.dart';
import 'package:flutter/material.dart';
import 'mon_container.dart';
import 'constants.dart';

class  ResultPage extends StatelessWidget {

  ResultPage({required this.imcResult, required this.interpretation, required this.resultText});

  final String imcResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATRICE IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Voici les resultats',style: TitleTextStyle),
          ),
          ),
          Expanded(
            flex: 5,
              child: monContainer(
                colour: activeCardColour,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),style: resultTextStyle,),
                    Text(imcResult,style: ImcResultTextStyle,),
                    Text(interpretation,style: ImcInterpretTextStyle,
                    textAlign: TextAlign.center,),
                  ],
                ),
              ),),
          Bottombutton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULER')
        ],
      )
    );
  }
}
