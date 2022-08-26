import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/BioContainer.dart';
import '../widgets/biocard.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //معناها مرر البدي تحت الاب بار
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'BIO',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.network(
              'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/Iconspassword.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Student Name',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Flutter Course - VisionPlas',
                style: TextStyle(
                  color: Colors.black87,
                  letterSpacing: 1,
                  fontSize: 15,
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
                height: 30,
                indent: 40,
                endIndent: 40,
              ),
              BioContainer(
                leadingIcon: Icons.phone_android,
                title: 'Mobile',
                subTitle: '059-755-1506',
                trailingIcon: Icons.phone,
                onPressed: () {},
                marginBottom: 10,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'email@flutter.com',
                trailingIcon: Icons.send,
                // marginBottom: 10,
                onPressed: () {
                  print('Email');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('send Email'),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.blue.shade300,
                      onVisible: () => print('Snackbar is visible now!'),
                      dismissDirection: DismissDirection.horizontal, //عشان نعمل ازاحة للسناك بار او الخروج منو
                      elevation: 4,
                      // padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsetsDirectional.only(
                          start: 20, end: 20, bottom: 10),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        onPressed: () {},
                        label: 'Dismiss',
                        textColor: Colors.yellow.shade500,
                      ),
                    ),
                  );
                },
              ),
              // BioCard(
              //   leadingIcon: Icons.phone_android,
              //   title: 'Mobile',
              //   subTitle: '970-059-755-1506',
              //   trailingIcon: Icons.phone,
              //   onPressed: () {
              //     print('Mobile');
              //   },
              // ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('Fluttet 2022'),
              ),
              // SizedBox(height: 10,),
            ],
          ),
          // PositionedDirectional(
          //   start: 0,
          //   end: 0,
          //   bottom: 10,
          //   child: Text('Fluttet 2022',textAlign: TextAlign.center,),
          // ),
        ],
      ),
    );
  }
}
