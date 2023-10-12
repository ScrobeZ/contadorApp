import 'package:flutter/material.dart';
import 'package:guillermo_grellas/presentation/widgets/custom_button.dart';
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
      appBar: AppBar(
        title: const Center(
          child: Text('Counter', style: TextStyle(fontSize: 32)
          )
        ),
        ),
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
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height*0.75,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                icon: Icons.add, 
                onPressed: (){
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
              ),

              const SizedBox(width: 15),
              CustomButton(
                icon: Icons.minimize,
                onPressed: (){
                  setState(() {
                    if (countador == 0) {
                      text = "No se puede bajar de 0";
                      }else{
                        countador --;
                        countador==1?text='Click':text='Clicks';
                      }
                    }
                  );
                },
              ),
              const SizedBox(width: 15),
              CustomButton(
                icon: Icons.refresh_rounded,
                onPressed: (){
                  setState(() {
                    countador=0;
                  });
                },
              ),
            ],
              
          ),
        ],
      ),
    );
  }
}