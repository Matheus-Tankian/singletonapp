import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:singletonapp/modelclass.dart';
import 'package:singletonapp/screen_two.dart';

class ScreenOne extends StatefulWidget {
  //const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController fieldController = TextEditingController();

  Modelclass modelclass = GetIt.instance.get<Modelclass>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text("Screen One",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: fieldController,
                  decoration:  InputDecoration(hintText: "Insira o texto aqui",
                    labelText: "Insira um texto",
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(

                child:  Text("Salvando os dados para o  Singleton"),
                onPressed:() {
                  modelclass.value = fieldController.text;

                  print(modelclass.value);
                },
              ),
              ElevatedButton(

                  child:  Text("Ir para a Screen Two"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ScreenTwo(),
                    ),
                    );
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
