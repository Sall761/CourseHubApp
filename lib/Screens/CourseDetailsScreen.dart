import 'package:flutter/material.dart';
import 'profileScreen.dart'; 
import 'enrollment_form_screen.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, dynamic> course;

  const DetailsScreen({super.key, required this.course});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

  
class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
  // to store course details in varialble
    final course = widget.course;
    // if there is no learn items in course return [] empty
    final List<String> learnItems = List<String>.from(course['learn'] ?? []);
  
    bool isEnrolled = false;
          for (var c in ProfileScreen.enrolledCourses) {
            if (c['name'] == course['name']) {
              isEnrolled = true;
              break;
              }
}










    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [



            Expanded(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    // Course Banner Image
                    SizedBox(
                      height: 210,
                      width: double.infinity,
                      child: Image.asset(
                        course['image'],
                        fit: BoxFit.cover,
                      ),
                    ),



                    // Buttons
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Color(0xFF1A56DB),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Course link copied: ${course['name']}'),
                                      ),
                                    );

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF1A56DB),
                            ),
                            icon: const Icon(Icons.ios_share_outlined, size: 18),
                            label: const Text('Share'),
                          ),
                        ],
                      ),
                    ),






                    // Details Card
                    Container(
                      margin: const EdgeInsets.only(top: 175),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Course Title
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                            child: Text(
                              course['name'],
                              style: const TextStyle(
                                color: Color(0xFF0F172A),
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Price
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              course['price'] == 0
                                  ? 'Free'
                                  : '${course['price']} YER',
                              style: const TextStyle(
                                color: Color(0xFFF59E0B),
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Course Sub-Details Row
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            color: const Color(0xFFF1F5F9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.category_outlined,
                                      color: Color(0xFFF59E0B),
                                      size: 20,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      course['category'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_rounded,
                                      color: Color(0xFFF59E0B),
                                      size: 20,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      course['start'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      color: Color(0xFFF59E0B),
                                      size: 20,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      course['hours'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 18),





                          // Institute & Trainer Card
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8FAFC),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xFFE2E8F0),
                              ),
                            ),

                            child: Column(
                                    children: [
                                      ListTile(
                                        leading: const CircleAvatar(
                                          backgroundColor: Color(0xFF1A56DB),
                                          child: Icon(
                                            Icons.school,
                                            color: Colors.white,
                                          ),
                                        ),

                                        title: Text(
                                          course['institute'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: const Text('Training Provider'),
                                      ),



                                      const Divider(height: 1, indent: 16, endIndent: 16),
                                      ListTile(
                                        leading: const CircleAvatar(
                                          backgroundColor: Color(0xFFF59E0B),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),

                                        title: Text(
                                          course['trainer'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Text(course['experience']),
                                      ),
                                    ],
                                  ),
                          ),
                          
                          const SizedBox(height: 18),



                          // Course Description
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            
                            child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                      
                                      children: [
                                        const Text(
                                          'About This Course',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1A56DB),
                                          ),
                                        ),

                                        const SizedBox(height: 8),
                                        
                                        Text(
                                          course['description'],
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF475569),
                                            height: 1.5,
                                          ),
                                        ),
                                        
                                        const SizedBox(height: 18),
                                        
                                        const Text(
                                          'What Will You Learn?',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFF59E0B),
                                          ),
                                        ),
                                        
                                        const SizedBox(height: 10),
                                        
                                        for (var item in learnItems)
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.check_circle_outline,
                                                    color: Color(0xFFF59E0B),
                                                    size: 22,
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(fontSize: 16),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        const SizedBox(height: 20),
                                      ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),



            // Bottom Buttons
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Color(0xFFE2E8F0)),
                ),
              ),

              child: Row(
                    children: [
                      
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: ElevatedButton(
                            onPressed: isEnrolled ? null
                                    : () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EnrollmentFormScreen(
                                              courseName: course['name'],
                                              institute: course['institute'],
                                              price: course['price'],
                                            ),
                                          ),
                                        );
                                      },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1A56DB),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),

                            child: Text(
                              isEnrolled ? 'Already Enrolled' : 'Register',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),




                      const SizedBox(width: 12),
                      
                      
                      
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: isFavorite ? Colors.red : const Color(0xFFFEE2E2),
                          borderRadius: BorderRadius.circular(14),
                        ),

                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.white : Colors.red,
                          ),
                        ),
                      ),
                    ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}