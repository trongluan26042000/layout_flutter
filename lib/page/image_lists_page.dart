import 'dart:math';
import 'package:flutter/material.dart';

// main method with runapp runs the class A4Run
void main() => runApp(ImageList());

class ImageList extends StatefulWidget {
  ImageList({Key? key}) : super(key: key);

  @override
  ImageListState createState() => ImageListState();
}

class ImageListState extends State<ImageList> {
// list of images
  List imgList = [
    Image.asset('Images/S1.png'),
    Image.asset('Images/S3.png'),
    Image.asset('Images/S2.png'),
    Image.asset('Images/S2.png'),
  ];

// method to add images dynamically
  void AddRandomImage() {
    var RandImgIndex = Random().nextInt(3);

    // if index is 0 we will pick image at index 0
    if (RandImgIndex == 0) {
      imgList.add(Image.asset('Images/S1.png'));
      // if index is 1 we will pick image at index 1
    } else if (RandImgIndex == 1) {
      imgList.add(Image.asset('Images/S2.png'));
    } else {
      // if index is 2 we will pick image at index 2
      imgList.add(Image.asset('Images/S3.png'));
    }
  }

  @override
  Widget build(BuildContext context) {
    // count of the list of image
    var ImgCount = imgList.length;

    // MaterialApp with debugShowCheckedModeBanner false
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.image),
          title: Text("Dynamic Add Image List"),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          // list view to show images and list count
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(children: [
                // showing item count
                Text("Image Count:$ImgCount"),
                SizedBox(width: 45),
                // icon button to call the
                // method AddRandomImage
                OutlinedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("Add Image"),
                  onPressed: () {
                    setState(() {
                      // calling method
                      AddRandomImage();
                    });
                  },
                )
              ]),
              // showing list of images
              for (var item in imgList)
                Center(
                  child: Container(width: 500, height: 350, child: item),
                )
            ],
          ),
        ),
      ),
    );
  }
}
