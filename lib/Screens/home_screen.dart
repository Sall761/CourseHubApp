import 'package:flutter/material.dart';
import 'courseDetailsScreen.dart';
import 'profileScreen.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  final String userName;
  const HomeScreen({super.key, this.userName = 'MR User'});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  String searchText = '';
  
  final List<String> categories = ['All', 'Programming', 'Design', 'Languages'];
  final List courses = [
    {
      'name': 'Flutter App Development',
      'institute': 'Modern Tech Institute',
      'category': 'Programming',
      'price': 25000,
      'hours': '24 Hours',
      'start': '01/12/2026',
      'trainer': 'Ahmed Mohammed',
      'experience': 'Trainer specialized in mobile app development',
      'description': 'Learn Dart basics, build Flutter UI, and organize pages and navigation through practical apps.',
      'image': 'Assets/images/Courses/FlutterCourse.png',
      'learn': [
        'Learn Dart fundamentals from scratch',
        'Build responsive Flutter interfaces',
        'Manage app state cleanly and effectively',
        'Organize screens, routes, and navigation',
      ],
    },
    {
      'name': 'Graphic Design Basics',
      'institute': 'Creativity Training Center',
      'category': 'Design',
      'price': 18000,
      'hours': '20 Hours',
      'start': '05/12/2026',
      'trainer': 'Sara Ali',
      'experience': 'Trainer specialized in design and visual identity',
      'description': 'Learn design principles, color coordination, typography, and practice designing posts and visual identities.',
      'image': 'Assets/images/Courses/Graphic.png',
      'learn': [
        'Understand core graphic design principles',
        'Master color harmony and typography',
        'Design eye-catching social media posts',
        'Build complete brand visual identities',
        'Prepare files properly for print and digital use',
      ],
    },
    {
      'name': 'English for Beginners',
      'institute': 'Languages Training Institute',
      'category': 'Languages',
      'price': 0,
      'hours': '30 Hours',
      'start': '10/12/2026',
      'trainer': 'Mohammed Abdullah',
      'experience': 'Trainer specialized in teaching English language',
      'description': 'Start learning basic vocabulary and grammar, and develop reading, listening, and speaking skills through daily situations.',
      'image': 'Assets/images/Courses/Eng.png',
      'learn': [
        'Build essential daily vocabulary and grammar',
        'Improve listening and reading comprehension',
        'Speak English confidently in everyday situations',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    


    final filteredCourses = courses.where((course) {
      
      final matchesCategory =
            selectedCategory == 'All' || course['category'] == selectedCategory;
      
      final matchesSearch =
          course['name'].toString().toLowerCase().contains(
            searchText.toLowerCase(),
          ) ||
          course['institute'].toString().toLowerCase().contains(
            searchText.toLowerCase(),
          );
      return matchesCategory && matchesSearch;
    }).toList();






    return Scaffold(
      appBar: AppBar(
                
                centerTitle: true,
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF1A56DB),
                title: const Text(
                  'CourseHub',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
        

        
        actions: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You have no notifications yet'),
                        ),
                      );
                    },
                    tooltip: 'Notifications',
                    icon: const Icon(Icons.notifications_outlined),
                  ),
                ],  
      ),



    drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          
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
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.person_outlined,
                color: Color(0xFF1A56DB),
              ),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  selectedCategory = 'All';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),

          ],

        ),

      ),




      bottomNavigationBar: BottomNavigationBar(
        // current screen is home n 0
        currentIndex: 0,
        selectedItemColor: const Color(0xFF1A56DB),
        unselectedItemColor: const Color.fromARGB(255, 24, 4, 4),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        backgroundColor: Colors.white,
        onTap: (index) {
          // if tap change index to 1 mean profile screen
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );

          }
        },
        // screen 0 home
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
        // screen 1 profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      
      






      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          // Welcome Card
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: const Color(0xFFE8EEFC),
              borderRadius: BorderRadius.circular(18),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Welcome, ${widget.userName}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A56DB),
                  ),
                ),
                
                const SizedBox(height: 10),
                
                const Text(
                  'Discover courses from institutes and training centers and start a new learning journey.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF475569),
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),



          const SizedBox(height: 22),
          
          TextField(
            onChanged: (value) {
              setState(() {
                searchText = value.trim();
              });
            },
            decoration: const InputDecoration(
              hintText: 'Search for a course or institute',
              prefixIcon: Icon(Icons.search, color: Color(0xFF1A56DB)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none,
              ),
            ),
          ),




          const SizedBox(height: 18),



          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = category;
                      });
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedCategory == category
                          ? const Color(0xFF1A56DB)
                          : Colors.white,
                      foregroundColor: selectedCategory == category
                          ? Colors.white
                          : const Color(0xFF1A56DB),
                      elevation: 0,
                      side: const BorderSide(color: Color(0xFF1A56DB)),
                    ),
                    child: Text(
                      category,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),



          const SizedBox(height: 24),
          
          
          const Text(
            'Available Courses',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),

          const SizedBox(height: 14),
          
          if (filteredCourses.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'No courses match your search.',
                textAlign: TextAlign.center,
              ),
            ),





          // Display Courses Cards
          for (var course in filteredCourses)
            Card(
              color: Colors.white,
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),

              // to make card clickable
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(course: course),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Container(
                              height: 140,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                                  color: Color(0xFF1748B5),
                                                  borderRadius: BorderRadius.vertical(
                                                    top: Radius.circular(18),
                                                      ),
                                                    ),
                              // to applay redus on image
                              child: ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(18),
                                      ),
                                      child: Image.asset(
                                        course['image'],
                                        fit: BoxFit.cover,
                                      ),
                                              ),
                              ),

                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            course['category'],
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFF1A56DB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),
                          
                          Text(
                            course['name'],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),

                          const SizedBox(height: 12),
                          
                          Row(
                            children: [
                                    const Icon(
                                      Icons.school_outlined,
                                      size: 21,
                                      color: Color(0xFF64748B),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        course['institute'],
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF64748B),
                                        ),
                                      ),
                                    ),
                                  ],
                          ),


                          const SizedBox(height: 18),
                        
                          Row(
                              children: [
                                    Expanded(
                                      child: Text(
                                        course['price'] == 0
                                            ? 'Free'
                                            : '${course['price']} YER',
                                        style: const TextStyle(
                                          color: Color(0xFFF59E0B),
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),


                                    const Icon(
                                      Icons.access_time,
                                      size: 20,
                                      color: Color(0xFF64748B),
                                    ),


                                    const SizedBox(width: 6),
                                    
                                    Text(
                                      course['hours'],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF64748B),
                                      ),
                                    ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}