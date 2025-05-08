import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: First(),
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 200,),
          Image.asset('assets/developer.png', width: 300,),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              child: Text("Go to next screen"),
              onPressed: () {

                // Navigate to Second screen
                Get.to(Second());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Card(
              color: Colors.grey.shade300,
              child: SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.deepPurple[500],
                        radius: 108,
                        child: ClipOval(
                          child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.network(
                              "https://picsum.photos/id/25/5000/3333",
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                                    strokeWidth: 1.5,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tahani Ayman',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.deepPurple[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'tahani@example.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
              ),
              child: Text("Go to first screen"),
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}


