import 'package:flutter/material.dart';
import "courseDetailsScreen.dart";
import 'paymentScreen.dart';

class ProfileScreen extends StatefulWidget {

  const ProfileScreen({ super.key });
  

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        
        appBar: AppBar(
        backgroundColor: Color(0xFF1A56DB),
        foregroundColor: Colors.white,
        ),

        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Row(children: [
            
                  Container(
                    height: 60,
                    width: 60,
                    
                    child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(30),
                          child:Image.asset("Assets/images/FlutterCourse.png",
                          fit: BoxFit.cover,)),

                  ),
                  Expanded(
                    child: ListTile(
                      title: Text("User name"),
                      subtitle: Text("Salem@gmail.com"),
                    ),
                  )
                ],),

                ListTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.person),
                  selectedColor: Color(0xFF1A56DB),
                  onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Payscreen() ));
                  },),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen()));
                  },),

              

              ],),
          ),
        ),
        
          body:Column(
                  children: [
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50) ,bottomRight: Radius.circular(50)),
                          color: Color(0xFF1A56DB),
                          boxShadow: [BoxShadow(color: Colors.black,blurRadius: 20,offset: Offset(0, 1))]
                          ),
                          
                      height: 200,
                      child: Column(
                        children: [
                        
                        Icon(Icons.person,size: 100,color: Colors.white,),
                        Text("Salem Ben Jabal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                          ),),
                        SizedBox(height: 20,),
                        Text("Salem@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                        ],
                      ),
                    ),





                  // CARDS
                  // Complated courses and Courses
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Card one Complate courses
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Card(
                            elevation: 8,
                            shadowColor: Colors.black,
                            color: const Color.fromARGB(255, 255, 154, 21),
                        
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                                  Column(
                                                    children: [
                                                      Text("Coumplated ",
                                                          style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w900,
                                                                  color: Colors.white,
                                                                  shadows: [Shadow(
                                                                            color: Colors.black,
                                                                            offset: Offset(0, 1),
                                                                            blurRadius: 5)]
                                                          ),),
                                                      Text("Courses ",
                                                          style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w900,
                                                                  color: Colors.white,
                                                                  shadows: [Shadow(
                                                                            color: Colors.black,
                                                                            offset: Offset(0, 1),
                                                                            blurRadius: 5)]
                                                          ),),
                                                    ],
                                                  ),
                                                  Text("4",
                                                      style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w900,
                                                              color: Colors.white,
                                                              shadows: [Shadow(
                                                                        color: Colors.black,
                                                                        offset: Offset(0, 1),
                                                                        blurRadius: 5)]
                                                      ),),
                                                  ],
                                      ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                  
                                ),
                                child: Icon(Icons.school_rounded,size: 40,))
                        
                              ],
                            ),
                        
                          ),
                        ),
                      ),
                    // Card Two Complate courses
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Card(
                            elevation: 8,
                            shadowColor: Colors.black,
                            color: const Color.fromARGB(255, 255, 154, 21),
                        
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                                  Column(
                                                    children: [
                                                      
                                                      Text("Courses ",
                                                          style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight: FontWeight.w900,
                                                                  color: Colors.white,
                                                                  shadows: [Shadow(
                                                                            color: Colors.black,
                                                                            offset: Offset(0, 1),
                                                                            blurRadius: 5)]
                                                          ),),
                                                    ],
                                                  ),
                                                  Text("4",
                                                      style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w900,
                                                              color: Colors.white,
                                                              shadows: [Shadow(
                                                                        color: Colors.black,
                                                                        offset: Offset(0, 1),
                                                                        blurRadius: 5)]
                                                      ),),
                                                  ],
                                      ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                  
                                ),
                                child: Icon(Icons.menu_book_rounded,size: 40))
                        
                              ],
                            ),
                        
                          ),
                        ),
                      ),
                  
                    ],
                  ),




                  // My Courses

                  // Courses list
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                    
                    child: Text("My Courses",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 220,
                    
                    decoration: BoxDecoration(
                      // color:Colors.amber
                    ),

                    // List of Courses
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                      
                          // card 1
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 5,right: 5),
                            decoration: BoxDecoration(
                            ),
                            child:Card(
                              color: Color(0xFF1A56DB),
                      
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  // Details
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Course name ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),),
                                    Text("Provider",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),),
                                  ],),
                                
                                  // state
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 170,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Accepted",
                                        style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Icon(Icons.check,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  
                                
                                ],),
                            ),
                            ),
                          // card 1
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 5,right: 5),
                            decoration: BoxDecoration(
                            ),
                            child:Card(
                              color: Color(0xFF1A56DB),
                      
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  // Details
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Course name ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),),
                                    Text("Provider",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),),
                                  ],),
                                
                                  // state
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 170,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Accepted",
                                        style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Icon(Icons.check,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  
                                
                                ],),
                            ),
                            ),
                          // card 1
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 5,right: 5),
                            decoration: BoxDecoration(
                            ),
                            child:Card(
                              color: Color(0xFF1A56DB),
                      
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  // Details
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Course name ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),),
                                    Text("Provider",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),),
                                  ],),
                                
                                  // state
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 170,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Accepted",
                                        style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Icon(Icons.check,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  
                                
                                ],),
                            ),
                            ),
                          // card 1
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 5,right: 5),
                            decoration: BoxDecoration(
                            ),
                            child:Card(
                              color: Color(0xFF1A56DB),
                      
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  // Details
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Course name ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),),
                                    Text("Provider",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),),
                                  ],),
                                
                                  // state
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 170,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Accepted",
                                        style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Icon(Icons.check,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  
                                
                                ],),
                            ),
                            ),
                          // card 1
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 5,right: 5),
                            decoration: BoxDecoration(
                            ),
                            child:Card(
                              color: Color(0xFF1A56DB),
                      
                              elevation: 8,
                              shadowColor: Colors.black,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  // Details
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Course name ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),),
                                    Text("Provider",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),),
                                  ],),
                                
                                  // state
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 170,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Accepted",
                                        style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Icon(Icons.check,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  
                                
                                ],),
                            ),
                            ),
                          
                          
                        ],
                      ),
                    ),
                  )
                  ],
              

              
          ),
          bottomNavigationBar: BottomNavigationBar(
                      
            
            items:
            [BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home")]
          ),

      );
  }
}