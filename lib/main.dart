import 'package:flutter/material.dart';
import 'package:spotify_clone/view/signuppages/signuppage.dart';

void main() {
  runApp(const Spotifyclone());
}

class Spotifyclone extends StatelessWidget {
  const Spotifyclone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Signup());
  }
}
