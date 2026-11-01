# 🎓 Course Hub - Trainee Mobile Application (Prototype)

A cross-platform Flutter application prototype designed to streamline and centralize the discovery, registration, and payment procedures for local training courses and workshops[cite: 1, 4, 7]. Built as an academic project fulfilling key mobile app development criteria including dynamic list rendering, multi-screen navigation, and form validation.

---

## 📌 Features

- **Authentication & Onboarding**: Clean login and welcome interface for trainees.
- **Dynamic Course Browsing**: Browse available courses using dynamic card lists (`ListView.builder`) and drawer navigation[cite: 1, 2].
- **Course Details View**: Detailed insights into course content, instructor profiles, schedules, and pricing.
- **Validated Enrollment Form**: Interactive form with strict client-side validation (`GlobalKey<FormState>`)[cite: 1, 2].
- **Flexible Local Payments**: Support for local transaction methods (Bank transfers, Wallets, Cash) with receipt verification inputs[cite: 1, 5].
- **Trainee Profile & My Courses**: Overview of active enrollments with seamless reverse-navigation flow[cite: 1, 2].

---

## 🏗️ Architecture & Project Structure

The project follows a clean, modular structure for maintainability and team collaboration:

```text
lib/
├── main.dart
├── models/
│   └── course_model.dart            # Data models and in-memory mock datasets
├── screens/
│   ├── login_screen.dart            # Trainee login interface
│   ├── home_screen.dart             # Main course catalog
│   ├── enrollment_form_screen.dart  # Registration and validation
│   ├── course_details_screen.dart   # Course details and actions
│   ├── payment_screen.dart          # Local payment methods & receipt input
│   └── profile_screen.dart          # Student dashboard & registered courses
└── widgets/
    ├── course_card.dart             # Reusable course card component
    └── app_drawer.dart              # Side navigation drawer
