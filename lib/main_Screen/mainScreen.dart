import 'dart:convert';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/Style.dart';
import 'package:todo/dataModel/model.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final lastSeenList=User.generateUsers();
    return Scaffold(
appBar: AppBar(title: Text('TODo List'),backgroundColor: Colors.blueGrey, actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add)),
        ]),

bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.backpack),
        label: 'backlog',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.work),
        label: 'Doing',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.done),
        label: 'done',
      ),
      
    ],
  ),

         backgroundColor: Colors.white,

        body: Container(
          
          
              child: SingleChildScrollView(
                child: Column(
                   children: [
              
                Divider(
                  color: Colors.transparent,
                ),
                      
                         EButton(title: lastSeenList[0].title,descreption: lastSeenList[0].descreption,startDate: lastSeenList[0].startDate,endDate: lastSeenList[0].endDate,),
                         EButton(title: lastSeenList[0].title,descreption: lastSeenList[1].descreption,startDate: lastSeenList[1].startDate,endDate: lastSeenList[0].endDate,),
                         EButton(title: lastSeenList[0].title,descreption: lastSeenList[0].descreption,startDate: lastSeenList[0].startDate,endDate: lastSeenList[0].endDate,),
                         EButton(title: lastSeenList[0].title,descreption: lastSeenList[0].descreption,startDate: lastSeenList[1].startDate,endDate: lastSeenList[0].endDate,),
                         EButton(title: lastSeenList[0].title,descreption: lastSeenList[1].descreption,startDate: lastSeenList[0].startDate,endDate: lastSeenList[0].endDate,),
                         
                         
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                   FloatingActionButton(  
                    child: Icon(Icons.add),  
                      backgroundColor: Colors.black,  
                      foregroundColor: Colors.blueGrey,  
                    onPressed: () => {},  
                    ),],),
                    
                 
                          ],
                          ),
              ),
            
    )
    
    );
      
  }
}