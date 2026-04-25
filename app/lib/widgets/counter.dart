import 'package:flutter/material.dart';            

            
class Counter extends StatelessWidget {

  final int  allTodos;
  final int allCompleted;

  const Counter({super.key, required this.allTodos , required this.allCompleted});
  
  bool alldone(){
    if (allTodos == allCompleted && allCompleted!=0 && allCompleted !=0 ){
      return true;
    }
    else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(top:27,bottom: 20),
              child: Text("$allCompleted/$allTodos",style: TextStyle(
                  fontSize: 35,
                  color: alldone()?Colors.green:Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
            );
  }
}           
           