import 'package:flutter/material.dart';

import 'profileScreen.dart';

class Payscreen extends StatefulWidget {
  final String courseName;
  final int price;
  final String institute;

  const Payscreen({
    super.key,
    this.courseName = 'Flutter App Development',
    this.institute = 'Modern Tech Institute',
    this.price = 25000,
  });

  @override
  State<Payscreen> createState() => _PayscreenState();
}

class _PayscreenState extends State<Payscreen> {
  int selectedIndex = 1; // 0 = Cash, 1 = Card, 2 = Deposit
  bool isReceiptUploaded = false;

  final holderNameController = TextEditingController();
  final cardNumberController = TextEditingController();
  final expiryDateController = TextEditingController();
  final cvvController = TextEditingController();

  @override
  void dispose() {
    holderNameController.dispose();
    cardNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  void confirmPayment() {
    if (selectedIndex == 1) {
      String holderName = holderNameController.text.trim();
      String cardNumber = cardNumberController.text.trim();
      String expiryDate = expiryDateController.text.trim();
      String cvv = cvvController.text.trim();

      if (holderName.isEmpty ||
          cardNumber.isEmpty ||
          expiryDate.isEmpty ||
          cvv.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill in all card details')),
        );
        return;
      } else if (cardNumber.length < 16) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Card number must be 16 digits')),
        );
        return;
      } else if (cvv.length < 3) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Security code must be 3 digits')),
        );
        return;
      }
    } else if (selectedIndex == 2 && !isReceiptUploaded) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please upload deposit receipt image')),
      );
      return;
    }

    final alreadyEnrolled = ProfileScreen.enrolledCourses.any(
      (c) => c['name'] == widget.courseName,
    );

    if (!alreadyEnrolled) {
      ProfileScreen.enrolledCourses.add({
        'name': widget.courseName,
        'institute': widget.institute,
        'isCompleted': false,
      });
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Enrollment Confirmed Successfully!')),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }













  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF1A56DB),
        elevation: 0,
        title: const Text(
          'Confirm Payment',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),



      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Course detail Card
            Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.courseName,
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.price == 0 ? 'Free' : '${widget.price} YER',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFF59E0B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


            const SizedBox(height: 16),


            // Payment Methods Tabs
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),


              child: Row(
                children: [
                  // Cash Button
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: selectedIndex == 0 ? const Color(0xFF1A56DB): Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },

                      child: Text(
                        'Cash',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == 0 ? Colors.white : const Color(0xFF334155),
                        ),
                      ),
                    ),
                  ),


                  // Card Button
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: selectedIndex == 1 ? const Color(0xFF1A56DB) : Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },

                      child: Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == 1 ? Colors.white: const Color(0xFF334155),
                        ),
                      ),
                    ),
                  ),


                  // Deposit Button
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: selectedIndex == 2 ? const Color(0xFF1A56DB): Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                            setState(() {
                              selectedIndex = 2;
                                    });
                                  },

                      child: Text(
                        'Deposit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == 2
                              ? Colors.white
                              : const Color(0xFF334155),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



            const SizedBox(height: 20),



            // Option 0: Cash Payment
            if (selectedIndex == 0)
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                
                child: Column(
                  children: [

                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(

                        children: [
                                Icon(
                                  Icons.handshake_outlined,
                                  size: 75,
                                  color: Color(0xFF1A56DB),
                                ),
                                SizedBox(height: 14),
                                Text(
                                  'Please visit the institute headquarters to pay the fees and confirm your seat before the course starts.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    height: 1.5,
                                    color: Color(0xFF334155),
                                  ),
                                ),
                              ],
                          ),
                        ),

                        
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),

                      decoration: const BoxDecoration(
                        color: Color(0xFF1A56DB),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),

                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFFF59E0B),
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              'Pay directly at the institute office',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),



            // Option 1: Card Payment
            if (selectedIndex == 1)
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          
                          const Text(
                            'Card Holder Name',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),


                          const SizedBox(height: 8),
                          
                          
                          TextField(
                            controller: holderNameController,
                            decoration: const InputDecoration(
                              hintText: 'Enter card holder name',
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Color(0xFF1A56DB),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          ),
                        
                        
                          const SizedBox(height: 16),
                        
                        
                          const Text(
                            'Card Number',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                        
                        
                          const SizedBox(height: 8),
                        
                        
                          TextField(
                            controller: cardNumberController,
                            keyboardType: TextInputType.number,
                            maxLength: 16,
                            decoration: const InputDecoration(
                              hintText: '0000 0000 0000 0000',
                              counterText: '',
                              prefixIcon: Icon(
                                Icons.credit_card,
                                color: Color(0xFF1A56DB),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          ),
                        
                        
                          const SizedBox(height: 16),
                        
                        
                          Row(
                            children: [

                                Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        const Text(
                                          'Expiry Date',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0F172A),
                                          ),
                                        ),

                                        const SizedBox(height: 8),
                                        
                                        TextField(
                                          controller: expiryDateController,
                                          keyboardType: TextInputType.datetime,
                                          decoration: const InputDecoration(
                                            hintText: 'MM/YY',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ),


                                const SizedBox(width: 12),


                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                          
                                          const Text(
                                            'Security Code',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF0F172A),
                                            ),
                                          ),
                                          
                                          const SizedBox(height: 8),
                                          
                                          TextField(
                                            controller: cvvController,
                                            obscureText: true,
                                            keyboardType: TextInputType.number,
                                            maxLength: 3,
                                            decoration: const InputDecoration(
                                              hintText: 'CVV',
                                              counterText: '',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(12),
                                                ),
                                              ),
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                              ],
                          ),
                        ],
                  ),
                ),
              ),




            // Option 2: Bank Deposit
            if (selectedIndex == 2)
              Column(
                children: [

                    Card(
                      color: const Color(0xFFE8EEFC),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: const Padding(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                                Row(
                                  children: [
                                    
                                    Icon(
                                      Icons.account_balance,
                                      color: Color(0xFF1A56DB),
                                    ),

                                    SizedBox(width: 8),
                                    
                                    Text(
                                      'Al-Kuraimi Islamic Bank',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1A56DB),
                                      ),
                                    ),
                                  ],
                            ),


                            SizedBox(height: 10),
                            

                            Text(
                              'Account Number: 1234567890',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Account Name: CourseHub Training',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF475569),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),



                    const SizedBox(height: 14),
                    
                    
                    Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          setState(() {
                            isReceiptUploaded = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 28,
                            horizontal: 16,
                          ),

                          child: Column(
                            children: [

                              CircleAvatar(
                                radius: 26,
                                backgroundColor: isReceiptUploaded? Colors.green: const Color(0xFF1A56DB),
                                child: Icon(isReceiptUploaded? Icons.check: Icons.upload_file,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),


                              const SizedBox(height: 12),
                              
                              
                              Text(
                                isReceiptUploaded
                                    ? 'Receipt Image Uploaded'
                                    : 'Upload Deposit Receipt Image',
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0F172A),
                                ),
                              ),

                              const SizedBox(height: 6),
                              
                              Text(
                                isReceiptUploaded
                                    ? 'receipt_image.jpg selected'
                                    : 'JPG or PNG (Max size 5MB)',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF64748B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),

            const SizedBox(height: 24),

            // Confirm Button
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: confirmPayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A56DB),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                
                child: Text(
                  selectedIndex == 0
                      ? 'Confirm Booking'
                      : selectedIndex == 2
                          ? 'Confirm Deposit'
                          : 'Confirm Payment',
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}