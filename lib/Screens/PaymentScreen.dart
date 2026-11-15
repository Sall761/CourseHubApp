import 'package:flutter/material.dart';
import 'ProfileScreen.dart';

class Payscreen extends StatefulWidget {
  const Payscreen({super.key});

  @override
  State<Payscreen> createState() => _PayscreenState();
}

class _PayscreenState extends State<Payscreen> {

  int selectedIndex = 1; // 0 = Cash, 1 = MasterCard, 2 = Bank Deposit

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Appbar
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(context);
        }, icon: Icon(Icons.arrow_back)),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF1A56DB),
        elevation: 8,
        shadowColor: Colors.black,
        title: Text("Confirm Payment",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500
          
        ),),
        centerTitle: true,
      ),

      // Body
      body: SingleChildScrollView(child: 
      Column(
        children: [
        // Card
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
          ),
          
          child: Card(
            color: const Color.fromARGB(255, 250, 250, 250),
            elevation: 8,
            shadowColor: Colors.black,
                child: Container(
                  padding: EdgeInsets.all(15),
                  

                  child: ListTile(
                    title: Text("Flutter Course Free ",
                                style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),),
                    subtitle: Text("150 SAR",
                              style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.amber,
                                      shadows: [Shadow(
                                                color: Colors.black,
                                                offset: Offset(0, 1),
                                                blurRadius: 5)]
                              ),),
                  ),
                ),
              
        ),),



        // Row Payment methods
        Container(
          margin: EdgeInsets.all(10),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(color: Colors.black,offset: Offset(0, 2),blurRadius: 1)]
          ),
          child: Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      // Cash Button
                      Expanded(
                        child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: selectedIndex == 0 ? const Color.fromARGB(255, 255, 154, 21):Colors.transparent,
                                ),

                                onPressed: (){
                                  setState(() {
                                    selectedIndex = 0;
                                  });
                      }, child: Text("Cash",style: TextStyle(color: selectedIndex == 0? Colors.white:Colors.black),))),
                    
                      // Master Card Button
                      Expanded(
                        child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: selectedIndex == 1 ? const Color.fromARGB(255, 255, 154, 21):Colors.transparent,
                                ),

                                onPressed: (){
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                      }, child: Text("Card",style: TextStyle(color: selectedIndex == 1? Colors.white:Colors.black),))),
                    
                    
                      // Deposit Button
                      Expanded(
                        child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: selectedIndex == 2 ? const Color.fromARGB(255, 255, 154, 21):Colors.transparent,
                                ),

                                onPressed: (){
                                  setState(() {
                                    selectedIndex = 2;
                                  });
                      }, child: Text("Diposit",style: TextStyle(color: selectedIndex == 2? Colors.white:Colors.black),))),
                    
                      
                      // Card Button
                    
                    ],
        ),),







// Card Options ==0
        // Card username
        if(selectedIndex==1)
        Container(
          // color:Colors.amber,
          height: 350,
          margin: EdgeInsets.only(left: 10,right: 10),
          
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card User Name",
                                style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            elevation: 8,

                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Card holder name",
                                hintStyle: TextStyle(color: Colors.blue,),
                            
                                // Backgraound
                                filled: true,
                                fillColor: Colors.white,
                                
                                // the border before click
                                enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2,),
                                            ),
                            
                                // the border After click (Writing)
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2,),
                                )
                                
                                
                            
                              ),
                            ),
                          )
                        ],),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card User Name",
                                style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            elevation: 8,

                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Card holder name",
                                hintStyle: TextStyle(color: Colors.blue,),
                            
                                // Backgraound
                                filled: true,
                                fillColor: Colors.white,
                                
                                // the border before click
                                enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2,),
                                            ),
                            
                                // the border After click (Writing)
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2,),
                                )
                                
                                
                            
                              ),
                            ),
                          )
                        ],),
                      
                      // Expired date and Safe Code

                        Row(
                          children: [
                          
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expired Date",
                                  style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),),
                            Material(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              elevation: 8,
                          
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "12/5/2026",
                                  hintStyle: TextStyle(color: Colors.blue,),
                              
                                  // Backgraound
                                  filled: true,
                                  fillColor: Colors.white,
                                  
                                  // the border before click
                                  enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,),
                                              ),
                              
                                  // the border After click (Writing)
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,),
                                  )
                                  
                                  
                              
                                ),
                              ),
                            )
                          ],),
                        ),

                        // 
                        SizedBox(width: 10,),

                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Safity code",
                                  style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),),
                            Material(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              elevation: 8,
                          
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "CVV",
                                  hintStyle: TextStyle(color: Colors.blue,),
                              
                                  // Backgraound
                                  filled: true,
                                  fillColor: Colors.white,
                                  
                                  // the border before click
                                  enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,),
                                              ),
                              
                                  // the border After click (Writing)
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2,),
                                  )
                                  
                                  
                              
                                ),
                              ),
                            )
                          ],),
                        ),
                        ],),

          ],),
        ),






// Cash Options ==0
        if(selectedIndex==0)
        Container(

          
          height: 200,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 200),
          padding: EdgeInsets.all(20),
          child: 
          Card(
            elevation: 8,
            shadowColor: Colors.black,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    
                    Icon(Icons.handshake,size: 80,color: Colors.blue,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A56DB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Icon(Icons.location_on_sharp,color: Colors.red,size: 30,),
                        Text(" Please come to confirm the requistion",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),)
                      ],),
                    )
            
                        
            
            ],),
          ),
        ),


// deposit Options ==2
        // Cash username
        if(selectedIndex==2)
        Container(

        ),



      
                      // elevated button
                      Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 10,right: 10,),
                        decoration: BoxDecoration(
                        // color: Colors.amber,
                          borderRadius: BorderRadius.circular(5)
                        ),


                        child: TextButton(
                          style: TextButton.styleFrom(shadowColor: Colors.black,elevation: 8,backgroundColor: Colors.blue),
                          onPressed: (){}, child: Text( selectedIndex==0 ?"OK":"Confirm",style: TextStyle(color: Colors.white,fontSize: 20),)))
        


      ],),),

    );
  }
}