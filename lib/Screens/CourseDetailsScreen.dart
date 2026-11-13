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

      body: SingleChildScrollView(
        child: Column(
              children: [
                // Buttons and image
                Container(
                  
                  width: double.infinity,
                  color:Colors.red,
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
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))),
            
                                    // elevated Button
                                    ElevatedButton(onPressed: (){}, 
                                          child: Row(children: [Text("Share"),Icon(Icons.ios_share_outlined)],))
                      ],),),
                    
                    // the detail card
                    Container(
                        margin: const EdgeInsets.only(top: 160), // <-- هنا السر!
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
                                    borderRadius: BorderRadius.circular(30)),
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
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                    ),
                                    padding: EdgeInsets.all(15),
                                    
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Text("What will We Learn?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        
                                      Row(children: [
                                        Icon(Icons.check_circle_outline),
                                        Text("Build real apps from scratch")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline),
                                        Text("Connect apps with Databases & Firebase")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline),
                                        Text("Professional State Management")
                                      ],),
                                      Row(children: [
                                        Icon(Icons.check_circle_outline),
                                        Text("Publish your app on Google Play & App Store")
                                      ],),
        
        
                                    ],),),
                                  
                                  
                                  // Buttons
                                  
                                  SizedBox(height: 6,),
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
                                        height: 45,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(20)
        
                                        ),
                                        child: OutlinedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [Icon(Icons.favorite_outline_outlined), Text("    Enroll Now")],))),
                                      // Icon Bottun
                                      Container(
                                        height: 45,
                                        width: 45,
        
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_outlined)))
                                    ],),
                                  ),
        
        
        
        
                              ],
                            ),
                          ),
                    ],)
                    ,),
        
                        ],),
      ),
    );
  }
}