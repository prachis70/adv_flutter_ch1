import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(themsData());
}

class themsData extends StatefulWidget {
  const themsData({super.key});

  @override
  State<themsData> createState() => _themsDataState();
}

class _themsDataState extends State<themsData> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack( children: [
                Container(height: height * 0.959, width: width * double.infinity, decoration: BoxDecoration(color: Colors.white54),),
                Container(height: height * 0.91, width: width * 0.9,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow:[BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)], color: Colors.white),
                  child:Padding(
                    padding: const EdgeInsets.all(110.0),
                    child:RichText(text: TextSpan(children: [TextSpan(text: '\nYo Man !\n ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),TextSpan(text:'\nits a simple example of  \ndark Theme ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),children: []), ],),),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(height: height*0.5,),
                    Container(
                      height: height * 0.1,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow),
                      child: Center(
                          child: Text(
                            'Ligth Icon',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ),
                    SizedBox(height: height * 0.031,),
                    Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent),
                        child: Center(
                          child: Text(
                            'Dark Icon',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                  ],
                ),
              )
            ],
            ),
          ),
        ),
      ),
    );
  }
}

bool isDark = false;