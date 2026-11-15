import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
              children: [
                // Buttons and image
                Container(
                  
                  width: double.infinity,
                  // color:Colors.red,
                  child: Stack(
                    children: [
            
                      // the Image
                      Container(
                        height: 200,
                        child: Image.asset("Assets/images/F1.png",
                                width: double.infinity,
                                height: double.infinity,
                                fit:BoxFit.cover,),
                      ),
        
                      
                      // Buttons
                      Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    // Icon Button
                                    child: IconButton(onPressed: (){
                                      Navigator.of(context).pop(context);
                                    }, icon: Icon(Icons.arrow_back))),
            
                                    // elevated Button
                                    ElevatedButton(onPressed: (){}, 
                                          child: Row(children: [Text("Share"),Icon(Icons.ios_share_outlined)],))
                      ],),),
                    
                    // the detail card
                    Container(
                        margin: const EdgeInsets.only(top: 160), 
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          ),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Course Title
                                Container(
                                  padding: EdgeInsets.only(left: 25,top: 25),
        
                                  child: Text("Course name : Flutter Dev mobiles",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900)),
                                ),
                                      SizedBox(height: 10,),
        
                                // The Price
                                Container(
                                  padding: EdgeInsets.only(left: 25),
        
                                  child: Text("150 SAR",style: TextStyle(
                                        color: const Color(0xffF59E0B),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                        )),
                                ),
                                      
                                SizedBox(height: 10,),
                                
                                //Course subDetails Row
                                
                                Container(
                                  
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 227, 226, 226)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    // Level
                                      children: [
                                      Text("Expert & Advanced",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      Icon(Icons.emoji_events_outlined,color: Color(0xffF59E0B),),
                                      
                                      Container(
                                        height: 20,                 
                                        width: 1,                  
                                        color: Colors.black,),
                                      // Date
                                      Text("22/3/2027",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      Icon(Icons.calendar_month_rounded,color: Color(0xffF59E0B),),
                                      
                                      Container(
                                        height: 20,                 
                                        width: 1,                  
                                        color: Colors.black,),
                                      // Time
                                      Text("11 PM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      Icon(Icons.access_alarm_outlined,color: Color(0xffF59E0B),),
                                  ],)),
                                  SizedBox(height: 10,),
        
                                  // Techer Details
        
                                Container(
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 227, 226, 226),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset(0, 4),blurRadius: 3)]),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      // provider details
                                      ListTile(
                                        title: Text("Programming Acadimy"),
                                        // the image
                                        leading: ClipRRect(
                                          borderRadius: BorderRadius.circular(25), 
                                          child: Image.asset(
                                            "Assets/images/F1.png", 
                                            width: 45,
                                            height: 45,
                                            fit: BoxFit.cover,
                                          
                                        )),
                                        ),
        
                                      // provider details & Teacher Details
                                        ListTile(
                                          title:Text("Salem ben jabal"),
                                          subtitle: Text("A Flutter programmin Expert"),
                                          leading:ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset("Assets/images/F1.png",height: 45,width: 45,fit: BoxFit.cover,)),          
                                        )
                                    ],),
                                ),
                                  SizedBox(height: 6,),
        
                                  Container(
                                    height: 170,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                    ),
                                    padding: EdgeInsets.all(15),
                                    
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text("What will We Learn?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 154, 21)),),
        
                                      Row(children: [
                                        Icon(Icons.check_circle_outline,color: const Color.fromARGB(255, 255, 154, 21,),size: 25,),
                                        Text("Build real apps from scratch")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline,color: const Color.fromARGB(255, 255, 154, 21,),size: 25,),
                                        Text("Connect apps with Databases & Firebase")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline,color: const Color.fromARGB(255, 255, 154, 21,),size: 25,),
                                        Text("Professional State Management")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline,color: const Color.fromARGB(255, 255, 154, 21,),size: 25,),
                                        Text("Publish your app on Google Play & App Store")
                                      ],),
        
                                    ],),),
                                  
                                  
                                  
                                  
        
        
        
        
                              ],
                            ),
                          ),
                    ],)
                    ,),
        
                                      Container(
                                    
                                    height: 80,
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      // Elevated button
                                      Container(
                                            height: 100,
                                            width: 300,
                                            margin: EdgeInsets.all(5),
                                            


                                            child: TextButton(
                                              style: TextButton.styleFrom(shadowColor: Colors.black,elevation: 8,backgroundColor: Colors.blue),
                                              onPressed: (){}, child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20),))),
                                                          // Icon Bottun
                                                          Container(
                                                            height: 45,
                                                            width: 45,
                            
                                                            decoration: BoxDecoration(
                                                              color: Colors.red,
                                                              borderRadius: BorderRadius.circular(10),
                                                              boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 18,offset: Offset(0, 7))]
                                                            ),
                                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_outlined,color: Colors.white,)))
                                                        ],),
                                          ),
                        ],
      ),
    );
  }
}