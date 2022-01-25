import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'modelclass.dart';

class ScreenTwo extends StatefulWidget {
  //const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Modelclass modelclass = GetIt.instance.get<Modelclass>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,



          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Screen Two",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
               SizedBox(height: 16,),
              ElevatedButton(

                child: Text("Dados salvos no Singleton"),
                onPressed:() {
                  print(modelclass.value);
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}

