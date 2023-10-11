import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int countador = 0;
  String text = "Clicks";
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$countador',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(text, 
              style: const TextStyle(fontSize: 32),textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      floatingActionButton:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height*0.75,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              FloatingActionButton(
                onPressed: () {
                    setState(() {
                    countador ++;
                    if (countador > 0) {
                    text = 'Click';
                    }
                    if(countador>1){
                      text='Clicks';
                    }
                    }
                  );
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 15),
              FloatingActionButton(
                onPressed: () {
                    setState(() {
                    if (countador == 0) {
                      text = "No se puede bajar de 0";
                      }else{
                        countador --;
                        countador==1?text='Click':text='Clicks';
                      }
                    });
                  }, 
                child: const Icon(Icons.minimize),
              ),
              const SizedBox(width: 15),
              FloatingActionButton(
                onPressed: (){
                  countador=0;
                  setState(() {
                    
                  });
                  },
                child: const Icon(Icons.refresh_rounded),
                ),
            ],
              
          ),
        ],
      ),
    );
  }
}