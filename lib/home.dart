import 'package:flutter/material.dart';
import 'package:project/taskManagement.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // To center content vertically within the container
                  children: <Widget>[
                    Text("Welcome to", style: TextStyle(fontSize: 18)),
                    Text(
                      "Plan IT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0), // Adjust the padding to position the button and text appropriately
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align to the bottom of the column
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Add space between the text and the button
              child: Container(
                padding: const EdgeInsets.all(8.0), // Padding inside the container for the text
                child: Center(
                  child: Text(
                    "Your Personal task management and planning solution",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Task()),
                );
              },
              label: Text(
                "Let's get started",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
