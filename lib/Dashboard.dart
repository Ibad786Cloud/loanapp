import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/LoanApllication.dart';
import 'package:loanapp/LoneForm.dart';

class deshboard extends StatefulWidget {
  @override
  _deshboardState createState() => _deshboardState();
}

class _deshboardState extends State<deshboard> {
    @override
    void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget Cards( image,title)
  {
    return GestureDetector(
      onTap: (){
        switch(title){
          case "Taxes":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
          case "Loan":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loan_Application()));
            break;
          case "Insurance":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;
            case "upload_Center":
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
            break;

        }
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4.0,
            )
          ],
          color: Colors.white
        ),
        child: Center(
          child:Column(
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.menu),
              iconSize: 30.0,
            color: Colors.black,
            onPressed: () {},
          ),
          title: Text(
            'Deshboard',
            style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
        ),
        
        body: GridView.count(crossAxisCount: 2,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),

             child: Container(
               height: 100,
               width: 100,
               child: Cards('images/images.png', 'Taxes'),
             ),
           ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
              child: Container(
                height: 100,
                width: 100,
                child: Cards('images/images.png', 'Loan'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
              child: Container(
                height: 100,
                width: 100,
                child: Cards('images/images.png', 'Insurance'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 20,bottom: 20),
              child: Container(
                height: 100,
                width: 100,
                child: Cards('images/images.png', 'upload_Center'),
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
