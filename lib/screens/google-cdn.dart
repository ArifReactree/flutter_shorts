import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'content_screen.dart';

class GoogleCDN extends StatefulWidget {
  const GoogleCDN({Key? key}) : super(key: key);

  static const id = "/google-cdn";

  @override
  State<GoogleCDN> createState() => _GoogleCDNState();
}

class _GoogleCDNState extends State<GoogleCDN> {
  final List<String> videos = [
    "https://storage.googleapis.com/thaqlain-staging.appspot.com/videosMP4s/Dua%20for%20Breaking%20the%20Fast%20_%20%23RamadanReflections.mp4",
    "https://storage.googleapis.com/thaqlain-staging.appspot.com/videosMP4s/First%20Words%20of%20Imam%20Ali%20_%20%23ThaqlainShorts.mp4",
    "https://storage.googleapis.com/thaqlain-staging.appspot.com/videosMP4s/Lady%20Khadija's%20Last%20Words%20_%20%23ThaqlainShorts.mp4",
    "https://storage.googleapis.com/thaqlain-staging.appspot.com/videosMP4s/What%20Happened%20on%205th%20and%206th%20Muharram%2060AH_%20_%20%23WithHussainInKarbala.mp4"
  ];
  final List<String> images = [
    "https://i.ytimg.com/vi/0ZMtaqRA3G8/sddefault.jpg",
    "https://i.ytimg.com/vi/EWldXDz8mjw/sddefault.jpg",
    "https://i.ytimg.com/vi/i9ptAu0LSP0/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGABwAcABBvABAfgBzgWAAoAKigIMCAAQARhlIE8oQzAP&rs=AOn4CLCfP61dvDArQDuwoGCJ0ALtCjjXeQ",
    "https://i.ytimg.com/vi/YAAaOEFQwMw/hq720_2.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGABwAcABBvABAfgBzgWAAoQHigIMCAAQARhlIFIoUjAP&rs=AOn4CLAdTF_oJDrlmZrnWkN30h3U7re-SA"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index].toString(),
                    imageSRC: images[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GoogleCDN Shorts',
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
