import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'content_screen.dart';

class DaCast extends StatelessWidget {
  
  static final id="da-cast";

  final List<String> videos = [
    "https://dacastmmod-mmd-cust.lldns.net/127--1686748123--4840348123--ca67ef5255c1046b13535b3f491672a5/e5/149356fb-9612-49e6-b41e-0ad9475b5783/1ba017e9-d037-491a-86fa-ce207c5c0d28/stream.ismd/manifest.m3u8?stream=4fa4e980-d797-b893-431f-88548e8af6f4_rendition%3B23a483ef-f9a1-8430-bd9c-777204865ce9_rendition%3Bd38720ba-6a02-47b1-dcf7-d0417f0a1f0f_rendition",
    "https://dacastmmod-mmd-cust.lldns.net/127--1686808923--4840408923--8cab8597ae2f8e7ee54a4fda3d1b66c1/e5/149356fb-9612-49e6-b41e-0ad9475b5783/e14a132c-891e-4a20-94cb-6f07d5e3159e/stream.ismd/manifest.m3u8?stream=df45f665-f78c-1d1a-1381-6d50dee563d7_rendition%3B89472932-f141-52b2-cb03-6141c769df11_rendition%3B7fa860c6-1884-3204-12ed-3af8adb7deae_rendition%3Ba3c1dafe-c386-7652-b0e4-ae76d7aa2d3a_rendition",
    "https://dacastmmod-mmd-cust.lldns.net/127--1686809090--4840409090--864b8d6cf14eaedc67bb01fbb79d3994/e5/149356fb-9612-49e6-b41e-0ad9475b5783/fadebfb2-dc01-47b0-8d86-b258263f95c3/stream.ismd/manifest.m3u8?stream=f15a0933-6c25-af09-a806-8403873f16ba_rendition%3B1cf21716-f9f8-862a-72e7-e47db97f1f73_rendition%3B6d628ecf-0394-fd60-a142-ed9ecef547c7_rendition",
    "https://dacastmmod-mmd-cust.lldns.net/127--1686809397--4840409397--22424b41ecb3b0625911d4d53c29523a/e5/149356fb-9612-49e6-b41e-0ad9475b5783/2395a303-585c-40f6-bd25-c40890ec07f3/stream.ismd/manifest.m3u8?stream=a51f5bb7-83bb-e77d-e9d7-3b6cc21353b9_rendition%3B12877dab-1de4-92bb-16ad-c4c7a576b593_rendition",
    "https://dacastmmod-mmd-cust.lldns.net/127--1686809248--4840409248--845d24bdfc4eace18e382dc07b0c76c3/e5/149356fb-9612-49e6-b41e-0ad9475b5783/67523f20-656c-425c-b482-0ca5b472898d/stream.ismd/manifest.m3u8?stream=4812441a-9dcf-7103-3f66-24c19347381d_rendition%3B56bc578f-7f16-c8af-3f59-26e468422fb2_rendition%3B14fe7de4-ff82-7dd5-09b6-a5aa6d458b31_rendition",
    
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
                    src: videos[index],
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
                      'DA Cast Shorts',
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