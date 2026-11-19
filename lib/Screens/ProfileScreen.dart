import 'package:course_hub_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  static List enrolledCourses = [];

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    
    int completedCount = 0;
    int activeCoursesCount = 0;

    for (var course in ProfileScreen.enrolledCourses) {
      if (course['isCompleted'] == true) {
        completedCount++;
      } else {
        activeCoursesCount++;
      }
    }









    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A56DB),
        foregroundColor: Colors.white,
      ),


      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1A56DB)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.school,
                          color: Color(0xFF1A56DB),
                          size: 32,
                        ),
                      ),
                  
                      SizedBox(height: 12),
                  
                      Text(
                        'CourseHub',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        'All your courses in one place',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      ],
                    ),
                  ),


                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                    color: Color(0xFF1A56DB),
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          userName: LoginScreen.currentUserName,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.person_outline,
                    color: Color(0xFF1A56DB),
                  ),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                    color: Colors.grey,
                  ),
                  title: const Text('All Courses'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.support_agent_outlined,
                    color: Colors.grey,
                  ),
                  title: const Text('Contact us'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                ),
              ],
        ),
      ),



      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xFF1A56DB),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: Offset(0, 4),
                )
              ],
            ),
            height: 190,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.white,
                ),
                Text(
                  LoginScreen.currentUserName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  LoginScreen.currentUserEmail,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),


          const SizedBox(height: 18),


          // CARDS: Completed courses and Total Courses
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // Card 1: Completed Courses
                Expanded(
                  child: SizedBox(
                    height: 100,

                    child: Card(
                      elevation: 6,
                      shadowColor: Colors.black26,
                      color: const Color.fromARGB(255, 255, 154, 21),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              const Column(
                                children: [

                                      Text(
                                        "Completed",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Courses",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                              ),
                              
                              Text(
                                "$completedCount",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: const Icon(
                              Icons.school_rounded,
                              size: 36,
                              color: Color(0xFF1A56DB),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Card 2: Total Enrolled Courses
                Expanded(
                  child: SizedBox(
                    height: 100,

                    child: Card(
                      elevation: 6,
                      shadowColor: Colors.black26,
                      color: const Color.fromARGB(255, 255, 154, 21),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                                  const Text(
                                    "Courses",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "$activeCoursesCount",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                            
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: const Icon(
                              Icons.menu_book_rounded,
                              size: 36,
                              color: Color(0xFF1A56DB),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),




          // My Courses 
          const SizedBox(height: 18),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: const Text(
              "My Courses",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          
          const SizedBox(height: 10),

          // Courses List
          Expanded(
            child: ProfileScreen.enrolledCourses.isEmpty
            // if true
                ? const Center(
                      child: Text(
                        "No enrolled courses yet.\nExplore courses and enroll now!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    )
                  
            // if false Display course liset
                : ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10),

                    children: [
                      for (var course in ProfileScreen.enrolledCourses)
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Card(
                            color: const Color(0xFF1A56DB),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                              
                              child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text(
                                              course['name'],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              course['institute'],
                                              style: const TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                    ),
                                  ),

                                  const SizedBox(width: 10),

                                  // Done Button
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      setState(() {
                                        course['isCompleted'] = !course['isCompleted'];
                                      });
                                    },


                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: (course['isCompleted'] == true)
                                          ? Colors.green
                                          : const Color(0xFFF59E0B),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),


                                    icon: Icon(
                                      (course['isCompleted'] == true)
                                          ? Icons.check_circle
                                          : Icons.check,
                                      size: 18,
                                    ),


                                    label: Text(
                                      (course['isCompleted'] == true) ? 'Completed' : 'Done',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
          ),
        ],
      ),




      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: const Color(0xFF1A56DB),
        unselectedItemColor: const Color.fromARGB(255, 24, 4, 4),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        backgroundColor: Colors.white,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  userName: LoginScreen.currentUserName,
                ),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}