
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        actions: const <Widget>[
          CircleAvatar(
            backgroundColor: Colors.cyanAccent,
            child: Icon(Icons.mail),
          ),
          SizedBox(width: 16), // Adding some spacing between elements
        ],
      ),



      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 48, // Setting a fixed height for TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  border:  OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(30),
                  ),
                  
                  suffixIcon: Icon( Icons.keyboard_voice_rounded),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),

              ),
            ),
          const SizedBox(height: 16), // Adding vertical spacing
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
