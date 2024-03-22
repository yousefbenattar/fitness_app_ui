import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.fill),
        ),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:const EdgeInsets.symmetric(horizontal: 150,vertical: 20)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Home()));
              }, child:const Text("Start",style: TextStyle(color: Colors.white),)),
         const SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }
}