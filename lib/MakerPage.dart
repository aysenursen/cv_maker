import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'CVPage.dart';

class MakerPage extends StatefulWidget {
  @override
  State<MakerPage> createState() => _MakerPageState();
}

class _MakerPageState extends State<MakerPage> {
  File? _image;
  File? _backgroundimage;
  ImagePicker picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future getBackgroundImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _backgroundimage = File(pickedFile!.path);
    });
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController yetenekCTRL = TextEditingController();
  TextEditingController deneyimCTRL = TextEditingController();
  TextEditingController okulCTRL = TextEditingController();
  TextEditingController yDilCTRL = TextEditingController();
  TextEditingController hakkindaCTRL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lexend'),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFFfafafe),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFE3A3B2),
          title: Text(
            'CV MAKER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jura',
              color: Colors.white70,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _backgroundimage == null
                  ? Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/howl.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              //borderRadius: BorderRadius.circular(18.0),
                              color: Color(0xFFfff8c4),
                            ),
                            width: 80,
                            height: 100,
                            child: _image == null
                                ? Center(
                                    child: Text(
                                    'Resim Seçilmedi',
                                    style: TextStyle(color: Colors.black45),
                                    textAlign: TextAlign.center,
                                  ))
                                : Image.file(
                                    _image!,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 1.0),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: Color(0xFFfff8c4),
                                  foregroundColor: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Text(
                                  'Resim Seç',
                                ),
                                onPressed: () async {
                                  getImage();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 1.0),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: Color(0xFFfff8c4),
                                  foregroundColor: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Text(
                                  'Arkaplanı Değiştir',
                                ),
                                onPressed: () {
                                  getBackgroundImage();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(_backgroundimage!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              //borderRadius: BorderRadius.circular(18.0),
                              color: Color(0xFFfff8c4),
                            ),
                            width: 80,
                            height: 100,
                            child: _image == null
                                ? Center(
                                    child: Text(
                                    'Resim Seçilmedi',
                                    style: TextStyle(color: Colors.black45),
                                    textAlign: TextAlign.center,
                                  ))
                                : Image.file(
                                    _image!,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 1.0),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: Color(0xFFfff8c4),
                                  foregroundColor: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Text(
                                  'Resim Seç',
                                ),
                                onPressed: () async {
                                  getImage();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 1.0),
                                  padding: EdgeInsets.all(10),
                                  backgroundColor: Color(0xFFfff8c4),
                                  foregroundColor: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Text(
                                  'Arkaplanı Değiştir',
                                ),
                                onPressed: () {
                                  getBackgroundImage();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    makeText('Ad Soyad'),
                    makeTextField(Icons.person, nameController),
                    makeText('E-Mail'),
                    makeTextField(Icons.mail, emailController),
                    makeText('Eğitim'),
                    makeTextField(Icons.school_rounded, okulCTRL),
                    makeText('Yetenekler'),
                    Row(
                      children: [
                        makeTextField(Icons.grade_rounded, yetenekCTRL),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFFfff8c4),
                            foregroundColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'ekle',
                          ),
                          onPressed: () {
                            Listeler.yetenekList.add(yetenekCTRL.text);
                          },
                        ),
                      ],
                    ),
                    makeText('Deneyim'),
                    Row(
                      children: [
                        makeTextField(Icons.code_rounded, deneyimCTRL),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFFfff8c4),
                            foregroundColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'ekle',
                          ),
                          onPressed: () {
                            Listeler.deneyimList.add(deneyimCTRL.text);
                          },
                        ),
                      ],
                    ),
                    makeText('Yabancı Diller'),
                    Row(
                      children: [
                        makeTextField(Icons.public_rounded, yDilCTRL),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFFfff8c4),
                            foregroundColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'ekle',
                          ),
                          onPressed: () {
                            Listeler.yabanciDil.add(yDilCTRL.text);
                          },
                        ),
                      ],
                    ),
                    makeText('Hakkında'),
                    SizedBox(
                      width: 350,
                      //height: 36,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(500),
                        ],
                        controller: hakkindaCTRL,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFFE3A3B2),
                              width: 1.5,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.info_rounded,
                          ),
                          hintText: 'Maksimum 500 kelime giriniz...',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFFfff8c4),
                            foregroundColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'CV OLUŞTUR',
                          ),
                          onPressed: () {
                            Listeler.name = nameController.text;
                            Listeler.email = emailController.text;
                            Listeler.okul = okulCTRL.text;
                            Listeler.hakkinda = hakkindaCTRL.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CVPage(
                                  userImage: _image,
                                ),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.download_rounded),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.upload_rounded),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding makeText(String text) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        '$text:',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFFE3A3B2),
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  SizedBox makeTextField(IconData iconName, TextEditingController deger) {
    return SizedBox(
      width: 274,
      height: 36,
      child: TextField(
        controller: deger,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFFE3A3B2),
              width: 1.5,
            ),
          ),
          prefixIcon: Icon(
            iconName,
          ),
        ),
      ),
    );
  }
}

class Listeler {
  static String name = '';
  static String email = '';
  static List<String> yetenekList = [];
  static List<String> deneyimList = [];
  static List<String> yabanciDil = [];
  static String okul = '';
  static String hakkinda = '';
}
