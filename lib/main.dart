import 'package:bio_app_sisalme/screens/bio_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const My_bio_app());
}

class My_bio_app extends StatelessWidget {
  const My_bio_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioScreen(),
    );
  }
}
