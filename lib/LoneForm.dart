import 'package:flutter/material.dart';
import 'package:loanapp/Dashboard.dart';

class ApplayLone extends StatefulWidget {
  @override
  _ApplayLoneState createState() => _ApplayLoneState();
}

class _ApplayLoneState extends State<ApplayLone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back),
              iconSize: 30.0,
              color: Colors.black,
              onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>deshboard()));
          },
          ),
          title: Text(
            'Loan Application',
            style: TextStyle(color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(
                    'User Name',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Row(
                    children: <Widget>[
                      Text('Loan request Code',style: TextStyle( color: Colors.grey[400],fontSize: 20,

                      ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text('#2334',style: TextStyle( color: Colors.black,fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Enter Amount',style: TextStyle(color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        width: 300,
                        color: Colors.grey[400],
                        child: Text('S0.0',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Purpose',style: TextStyle(color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        width: 300,
                        color: Colors.grey[400],
                        child: Text('Commercial',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Collateral',style: TextStyle(color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        width: 300,
                        color: Colors.grey[400],
                        child: Text('AutoMobile',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Market Value',style: TextStyle(color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        width: 300,
                        color: Colors.grey[400],
                        child: Text('S0.0',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Due Date',style: TextStyle(color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        width: 150,
                        color: Colors.grey[400],
                        child: Text('Dec 30,2019',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 18,
                        ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        child:IconButton(icon:Icon(Icons.calendar_today),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: IconButton(icon:Icon(Icons.email),
            iconSize: 20,
            color: Colors.white,
            onPressed: (){},
          ),
          backgroundColor: Colors.green,
        ),
      ),

    );
  }
}
