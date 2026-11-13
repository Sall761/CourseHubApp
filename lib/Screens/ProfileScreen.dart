import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {

  const ProfileScreen({ super.key });
  

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        
        appBar: AppBar(
        backgroundColor: Color(0xFF1A56DB),
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

                  },),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: (){

                  },),

              

              ],),
          ),
        ),
        
          body: Container(
            
                child: Column(
                  children: [
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50) ,bottomRight: Radius.circular(50)),
                          color: Color(0xFF1A56DB),
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
                            color: Colors.yellow,
                        
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Complated courses"),
                                    Text("2"),
                                  ],
                                      ),
                              Icon(Icons.book,size: 30,)
                        
                              ],
                            ),
                        
                          ),
                        ),
                      ),
                    // Card Two Complate courses
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 200,
                          child: Card(
                            color: Colors.yellow,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Text("Provider",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),),
                                  Text("4",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),),
                                  ],
                                      ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    
                                    child: Card(
                                      color:Colors.white,
                                      child: Icon(Icons.book,size: 30,))),
                                ],
                                )
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
                    height: 240,
                    
                    decoration: BoxDecoration(
                    ),

                    // List of Courses
                    child: ListView(
                      children: [

                        // card 1
                        Container(
                          height: 70,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                          color: Color(0xFF1A56DB),
                          borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
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
                        // card 2
                        Container(
                          height: 70,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                          color: Color(0xFF1A56DB),
                          borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
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
                                  color: const Color.fromARGB(255, 255, 154, 21),
                                ),
                                height: 35,
                                width: 170,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("whaiting",
                                    style: TextStyle(color: Colors.white,fontSize: 20),),
                                    Icon(Icons.access_alarm_outlined,color: Colors.white,)
                                  ],
                                ),
                              ),
                              
                            
                            ],),
                          ),
                          ), 
                        // card 3
                        Container(
                          height: 70,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                          color: Color(0xFF1A56DB),
                          borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
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
                                  color: const Color.fromARGB(255, 255, 154, 21),
                                ),
                                height: 35,
                                width: 170,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("whaiting",
                                    style: TextStyle(color: Colors.white,fontSize: 20),),
                                    Icon(Icons.access_alarm_outlined,color: Colors.white,)
                                  ],
                                ),
                              ),
                              
                            
                            ],),
                          ),
                          ), 
                        
                        
                      ],
                    ),
                  )
                  ],
              ),

              
          ),

          bottomNavigationBar: BottomNavigationBar(items:
          [
            BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home")

          ]
          ),

      );
  }
}