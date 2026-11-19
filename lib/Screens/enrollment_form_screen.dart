import 'package:flutter/material.dart';
import 'paymentScreen.dart';
import 'profileScreen.dart';

class EnrollmentFormScreen extends StatefulWidget {
  final String courseName;
  final String institute;
  final int price;

  const EnrollmentFormScreen({
    super.key,
    required this.courseName,
    required this.institute,
    required this.price,
  });

  @override
  State<EnrollmentFormScreen> createState() => _EnrollmentFormScreenState();
}

class _EnrollmentFormScreenState extends State<EnrollmentFormScreen> {
  final formKey = GlobalKey<FormState>();










  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          'Enrollment Form',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A56DB),
        foregroundColor: Colors.white,
      ),
      
      
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          const Text(
            'Enroll in Your Next Course',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                ),
              ),

          const SizedBox(height: 8),
          
          const Text(
              'Enter trainee details to complete enrollment',
              style: TextStyle(fontSize: 18, color: Color(0xFF64748B)),
          ),


          const SizedBox(height: 22),
          
          // some details
          Card(
            color: const Color(0xFFE8EEFC),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.courseName,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A56DB),
                    ),
                  ),


                  const SizedBox(height: 8),
                  
                  
                  Text(
                    widget.institute,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF475569),
                    ),
                  ),


                  const SizedBox(height: 12),
                  
                  
                  Text(
                    widget.price == 0 ? 'Free Course': 'Paid Course • ${widget.price} YER',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF59E0B),
                    ),
                  ),
                ],
              ),
            ),
          ),




          const SizedBox(height: 20),
          
          
          
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [

                    const Text(
                      'Trainee Details',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),

                    const SizedBox(height: 22),
                    
                    TextFormField(
                        style: const TextStyle(fontSize: 18),
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          hintText: 'Enter name as you want on the certificate',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF64748B),
                          ),
                          
                          labelStyle: TextStyle(fontSize: 18),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF1A56DB),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                    ),
                    
                    const SizedBox(height: 20),
                    
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        hintText: '777123456',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF64748B),
                        ),
                        labelStyle: TextStyle(fontSize: 18),
                        prefixIcon: Icon(
                          Icons.phone_outlined,
                          color: Color(0xFF1A56DB),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    
                    const SizedBox(height: 20),
                    
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'salem@example.com',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF64748B),
                        ),
                        labelStyle: TextStyle(fontSize: 18),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF1A56DB),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || !value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(height: 20),
                    
                    
                    const Text(
                        'Please verify your details before proceeding to complete your enrollment.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    
                    const SizedBox(height: 20),
                    
                    SizedBox(
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            if (widget.price == 0) {

                              final alreadyEnrolled =
                                  ProfileScreen.enrolledCourses.any(
                                (c) => c['name'] == widget.courseName,
                              );

                              if (!alreadyEnrolled) {
                                ProfileScreen.enrolledCourses.add({
                                  'name': widget.courseName,
                                  'institute': widget.institute,
                                  'isCompleted': false,
                                });
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfileScreen(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Payscreen(
                                    courseName: widget.courseName,
                                    institute: widget.institute,
                                    price: widget.price,
                                  ),
                                ),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1A56DB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          widget.price == 0 ? 'Confirm Enrollment'  : 'Proceed to Payment',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}