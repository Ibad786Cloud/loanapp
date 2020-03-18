import 'package:flutter/material.dart';
import 'package:loanapp/Dashboard.dart';
import 'package:loanapp/LoneForm.dart';

class Loan_Application extends StatefulWidget {
  @override
  _Loan_ApplicationState createState() => _Loan_ApplicationState();
}

class _Loan_ApplicationState extends State<Loan_Application> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget Card(image,title)
  {
    return GestureDetector(
      onTap: (){
        switch(title){
          case "PAYDAY LOAN":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
          case "FLEX LOAN":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
          case "INSTALMENT LOAN":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
          case "BUSNIESS LOAN":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
        }

      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
              boxShadow:[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4.0,
                ),
              ],
          color: Colors.white
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(title,
              style: TextStyle(color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset('images/images.png',height: 80.0,),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>deshboard()));
          },
        ),
        title: Text(
          'Applay For a Loan ',
          style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),
        ),
      ),
      body:GridView.count(crossAxisCount: 2,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 100,
            width: 100,
            child: Text(
              'LOW ON CASH? GET A QUICK LOAN DISCUSION',
              style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            width: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),

            child: Container(
              height: 100,
              width: 100,
              child: Card('images/images.png', 'PAYDAY LOAN'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
            child: Container(
              height: 100,
              width: 100,
              child: Card('images/images.png', 'FLEX LOAN'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
            child: Container(
              height: 130,
              width: 150,
              child: Card('images/images.png', 'INSTALMENT '),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
            child: Container(
              height: 130,
              width: 150,
              child: Card('images/images.png', 'BUSNIESS '),
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
    );
  }
}
