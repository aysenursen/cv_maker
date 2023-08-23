// ignore_for_file: prefer_const_declarations, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter/material.dart';

import 'MakerPage.dart';

class CVPage extends StatelessWidget {
  // const CVPage({super.key});

  final File? userImage;
  CVPage({Key? key, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b6f8c),
        title: Text(
          'CV',
          style: TextStyle(
            fontFamily: 'Cabin',
            color: Colors.white70,
          ),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Color(0xff095f78),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    userImage == null
                        ? Center(
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundColor: Colors.white54,
                            ),
                          )
                        : Center(
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: FileImage(userImage!),
                            ),
                          ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'İletişim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Merriweather',
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mail,
                          size: 18,
                        ),
                        Expanded(
                          child: Text(
                            Listeler.email,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontFamily: 'Cabin',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Eğitim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Merriweather',
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      Listeler.okul,
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Cabin',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Yabancı Diller',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Merriweather',
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                    ),
                    for (var dil in Listeler.yabanciDil)
                      Text(
                        '- $dil',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Cabin',
                          fontSize: 16,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color(0xffe7f5f9),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Listeler.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cabin',
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Divider(
                            height: 20,
                            color: Color(0xff095f78),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          'Hakkında',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Merriweather',
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Divider(
                            height: 15,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          Listeler.hakkinda,
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Cabin',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(children: [
                      Text(
                        'Yetenekler',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Merriweather',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          height: 15,
                          color: Colors.blueGrey,
                        ),
                      ),
                      for (var yetenek in Listeler.yetenekList)
                        Text(
                          '- $yetenek',
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Cabin',
                            fontSize: 16,
                          ),
                        ),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deneyim',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Merriweather',
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Divider(
                            height: 15,
                            color: Colors.blueGrey,
                          ),
                        ),
                        for (var deneyim in Listeler.deneyimList)
                          Text(
                            '- $deneyim',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Cabin',
                              fontSize: 16,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
