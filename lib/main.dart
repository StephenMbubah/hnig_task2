import 'package:flutter/material.dart';
import 'package:hnig_task2/cv_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:  HomePage(bio: "I have a strong foundation in programming concepts and have been particularly "
          "drawn to Flutter for its ability to build cross-platform mobile applications with a single codebase."
          " I have completed several Flutter projects on my own, including an e-commerce app and I have also published an app on google play store which have allowed me to gain hands-on "
          "experience with the framework."
          "I am a fast learner and thrive in collaborative environments. I am confident that my enthusiasm for technology, "
          "along with my strong problem-solving skills, will make me a valuable asset to your team. I "
          "am excited to apply my skills and contribute to the success of of the company as a Flutter Developer",
        fullName: 'Mbubah Stephen Chigozirim',
        githubHandle: 'github.com/StephenMbubah',
        slackUsername: 'Stephen Mbubah',),
    );
  }
}
