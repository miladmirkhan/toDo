import 'package:flutter/material.dart';

class EButton extends StatelessWidget {
   String title;
  String descreption;
  String startDate;
  String endDate; 

 EButton({ Key? key,required this.title,required this.descreption,required this.startDate,required this.endDate }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
          height: 100,
          width: 328,
          color: Colors.blueGrey,
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Column(
                 children: [
                   Padding(padding: EdgeInsets.all(3)),
                   
              Text(title, style:TextStyle( fontWeight: FontWeight.bold),textAlign: TextAlign.right),
              Text(descreption,style:TextStyle( fontWeight: FontWeight.w200),textAlign: TextAlign.end),
                 ],
               ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisSize: MainAxisSize.values.last,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(startDate.toString()),
                    Text(endDate.toString()),
                    ]
              ),

            


            ],),);
}
}