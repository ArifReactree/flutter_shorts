// import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/content_screen.dart';

class MuviPage extends StatefulWidget {
  static final id = "/home";

  @override
  State<MuviPage> createState() => _MuviPageState();
}

class _MuviPageState extends State<MuviPage> {

  
  final List<String> videos = [
    "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/51da2c4597b64d6e9aad10c2cce51a4b/videos/hls/master.m3u8",
    "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/1004db97e4344105bb754424c9d03a80/videos/hls/master.m3u8",
    "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/f0f8c205915742549874a55187a7fa4b/videos/hls/master.m3u8",
    "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/3670e5991adf48caae23fd4a375a6dec/videos/hls/master.m3u8",
    "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/51da2c4597b64d6e9aad10c2cce51a4b/videos/hls/master.m3u8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              // Swiper(
              //   // physics: NeverScrollableScrollPhysics(),
              //   itemBuilder: (BuildContext context, int index) {
              //     return ContentScreen(
              //       src: videos[index],
              //     );
              //   },
              //   itemCount: videos.length,
              //   scrollDirection: Axis.vertical,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Muvi Shorts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
