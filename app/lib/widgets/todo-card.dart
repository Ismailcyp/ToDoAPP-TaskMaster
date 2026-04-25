import 'package:flutter/material.dart';

class Todocard extends StatelessWidget {
  final String vartitle;
  final bool doneORnot;
  final Function changeStatus;
  final int index;
  final Function delete;

  const Todocard({
    super.key,
    required this.vartitle,
    required this.index,
    required this.changeStatus,
    required this.doneORnot,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(209, 224, 224, 0.2),
            borderRadius: BorderRadius.circular(20),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                vartitle,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: doneORnot ? TextDecoration.lineThrough: TextDecoration.none
                ),
              ),

              Row(
                children: [
                  Icon(
                    doneORnot ? Icons.check : Icons.close,
                    color: doneORnot ? Colors.green : Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 17,),
                  IconButton(onPressed: () {delete(index);}, icon: Icon(Icons.delete,size: 32,color: Colors.white30,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
