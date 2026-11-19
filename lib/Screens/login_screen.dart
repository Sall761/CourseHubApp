import 'package:flutter/material.dart';
import 'profileScreen.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  static String currentUserName = 'NewUser';
  static String currentUserEmail = 'User@gmail.com';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    // get input data into variables
    String enteredName = nameController.text.trim();
    String password = passwordController.text;


    // Validation 
    if (enteredName.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter username/email and password')),
      );
      return;
    }

    Map? foundUser;
    for (var user in RegisterScreen.users) {
      if ((user['name'] == enteredName || user['email'] == enteredName) &&
          user['password'] == password) {

            foundUser = user;
      }
    }
    if (foundUser != null) {
      LoginScreen.currentUserName = foundUser['name'];
      LoginScreen.currentUserEmail = foundUser['email'];
      ProfileScreen.enrolledCourses = foundUser['courses']; 

      
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(userName: foundUser!['name']),
        ),
      );
    } 
    
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username/email or password')),
      );
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }













  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Card(
              color: const Color(0xFF1A56DB),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                
                child: Column(
                  children: [

                    const Icon(Icons.school, size: 66, color: Colors.white),

                    SizedBox(height: 18),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Course',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Hub',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF59E0B),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),
                    
                    Text(
                      'Your first step toward a new skill',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),

                    SizedBox(height: 22),
                    
                    Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sign in to explore courses',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            
            Card(
              color: Colors.white,
              // we make it 0 to hide the card 
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              

              child: Container(
                padding: EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Username or Email',
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Color(0xFF1A56DB),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF1A56DB),
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),


                    const SizedBox(height: 26),
                    
                    
                    SizedBox(
                      height: 58,
                      child: ElevatedButton(
                        // Function login
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1A56DB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),






            const SizedBox(height: 16),
            
            
            

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF334155),
                  ),
                ),


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFF59E0B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}