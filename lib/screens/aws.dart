// import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'content_screen.dart';

class AWS extends StatefulWidget {
  const AWS({Key? key}) : super(key: key);
  static const id="aws";

  @override
  State<AWS> createState() => _AWSState();
}

class _AWSState extends State<AWS> {
  final List<String> videos = [
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/1004db97e4344105bb754424c9d03a80/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/f0f8c205915742549874a55187a7fa4b/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/1004db97e4344105bb754424c9d03a80/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/f0f8c205915742549874a55187a7fa4b/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/1004db97e4344105bb754424c9d03a80/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/f0f8c205915742549874a55187a7fa4b/videos/hls/master.m3u8",
    // "https://d2qhubmtkumgh4.cloudfront.net/J6fYDD5oeYuQDeSozUtqPIEXkNUP1kBR/B05C552148D643158A8AD703B26331CC/vl/1004db97e4344105bb754424c9d03a80/videos/hls/master.m3u8",
    // "https://dacastmmod-mmd-cust.lldns.net/127--1686748123--4840348123--ca67ef5255c1046b13535b3f491672a5/e5/149356fb-9612-49e6-b41e-0ad9475b5783/1ba017e9-d037-491a-86fa-ce207c5c0d28/stream.ismd/manifest.m3u8?stream=4fa4e980-d797-b893-431f-88548e8af6f4_rendition%3B23a483ef-f9a1-8430-bd9c-777204865ce9_rendition%3Bd38720ba-6a02-47b1-dcf7-d0417f0a1f0f_rendition",
    // "https://dacastmmod-mmd-cust.lldns.net/127--1686808923--4840408923--8cab8597ae2f8e7ee54a4fda3d1b66c1/e5/149356fb-9612-49e6-b41e-0ad9475b5783/e14a132c-891e-4a20-94cb-6f07d5e3159e/stream.ismd/manifest.m3u8?stream=df45f665-f78c-1d1a-1381-6d50dee563d7_rendition%3B89472932-f141-52b2-cb03-6141c769df11_rendition%3B7fa860c6-1884-3204-12ed-3af8adb7deae_rendition%3Ba3c1dafe-c386-7652-b0e4-ae76d7aa2d3a_rendition",
    // "https://dacastmmod-mmd-cust.lldns.net/127--1686809090--4840409090--864b8d6cf14eaedc67bb01fbb79d3994/e5/149356fb-9612-49e6-b41e-0ad9475b5783/fadebfb2-dc01-47b0-8d86-b258263f95c3/stream.ismd/manifest.m3u8?stream=f15a0933-6c25-af09-a806-8403873f16ba_rendition%3B1cf21716-f9f8-862a-72e7-e47db97f1f73_rendition%3B6d628ecf-0394-fd60-a142-ed9ecef547c7_rendition",
    // "https://dacastmmod-mmd-cust.lldns.net/127--1686809397--4840409397--22424b41ecb3b0625911d4d53c29523a/e5/149356fb-9612-49e6-b41e-0ad9475b5783/2395a303-585c-40f6-bd25-c40890ec07f3/stream.ismd/manifest.m3u8?stream=a51f5bb7-83bb-e77d-e9d7-3b6cc21353b9_rendition%3B12877dab-1de4-92bb-16ad-c4c7a576b593_rendition",
    // "https://dacastmmod-mmd-cust.lldns.net/127--1686809248--4840409248--845d24bdfc4eace18e382dc07b0c76c3/e5/149356fb-9612-49e6-b41e-0ad9475b5783/67523f20-656c-425c-b482-0ca5b472898d/stream.ismd/manifest.m3u8?stream=4812441a-9dcf-7103-3f66-24c19347381d_rendition%3B56bc578f-7f16-c8af-3f59-26e468422fb2_rendition%3B14fe7de4-ff82-7dd5-09b6-a5aa6d458b31_rendition",
    "https://rt-test-bucket-1.s3.ap-southeast-1.amazonaws.com/Dua%20for%20Breaking%20the%20Fast%20_%20%23RamadanReflections.mp4?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEPL%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDmFwLXNvdXRoZWFzdC0xIkYwRAIgOYxggeyCMxDmj%2B7qyz7kKYrqOZos9gmApd4woMMP6QcCIAMazHzDg%2BE7M9AtOmsaN8vV%2F91GXyra2UNUxYlf4hzAKuQCCFsQABoMNjI4NjE0MDc0MjIxIgypj34BgEnlhh4SzCUqwQIJV2816IxUAGbUsTt3oX0krcCC4I6xYC1F9oA4H5UinZuUCqaXGWwzoZonigjqZbVi6S55EjseZJ7SPEPIep9UFCXscAN6i0IiWXexKgrrkhy3y3oAmEi2cjt%2BlElmiHtINdAfAoC1ZcAkKr6W9P38NYjSKJqj9owoOjl8%2Fj93AtHBTo1vfdZH%2FYp14g%2BOYSjaOtAex4B1JZ3TaofZpn3ETNlxibOG%2Bo8r1wYEt0JqYbbTx9lualMdMiq7As95COXXVz6qW7NDvIKXhZvt8%2BlALdWoq1Fq1%2BdQfzRnLU7gKdlK8i6DcFF%2BQlyqNB14DjyHA6%2FxUqYI%2Ft0qrGsJhUSLXCho7S308SDWbiT1JgsgqbhgEIccrkyDBGrgNW8sDP3O8Z7DUsgJCOw15dpdUjKd3df9f8q7VShHEGi2QqaoRcswq9nqpAY6tAKvG7qKgffJG8B14XOvIjs1%2ByMKE25DkC%2FDAFDiIElq9OkaW2n8a4PefEq%2B6GoF64LIWCNQGeYPCXuxzF7JXLPFnXRwieKpnXYR0RfeyhwrR19IKas9hNug5SFeg1QsBo8cpYvarozDZBD3AWO20YZL1GCDkK0%2BZ7ayiLBn%2BUDQSOwNhNKiAglj3QpqfAa6XZWMIfYP6IfouibkscTLjKEE%2F7eNDxdKiK0%2FNbWKEuGyFAhzhPem7Wc%2FUOADY3Qf3H%2B84bcXTLGmE%2FC7WIBr%2B72snbKJ54XwoOASGNAV07OxLwQZjlh8RCZPmUU87W6pJ8HNiVbuTFKkB7XhmE1le6Fk78WQAD6P3xnuRq4n4x0l72vAL9NHIpZZgojkSJOklDcnxMXtXO2HqR07VBvwk%2BUgc5Tj9g%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230627T103651Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAZEXCRR5WUGQJUP4O%2F20230627%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Signature=cb26ff509de1a0c43a501cd1960aa693bff20ec2584ff7e40c95a00099bfaf68",
    "https://rt-test-bucket-1.s3.ap-southeast-1.amazonaws.com/Lady%20Khadija%27s%20Last%20Words%20_%20%23ThaqlainShorts.mp4?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEPL%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDmFwLXNvdXRoZWFzdC0xIkYwRAIgOYxggeyCMxDmj%2B7qyz7kKYrqOZos9gmApd4woMMP6QcCIAMazHzDg%2BE7M9AtOmsaN8vV%2F91GXyra2UNUxYlf4hzAKuQCCFsQABoMNjI4NjE0MDc0MjIxIgypj34BgEnlhh4SzCUqwQIJV2816IxUAGbUsTt3oX0krcCC4I6xYC1F9oA4H5UinZuUCqaXGWwzoZonigjqZbVi6S55EjseZJ7SPEPIep9UFCXscAN6i0IiWXexKgrrkhy3y3oAmEi2cjt%2BlElmiHtINdAfAoC1ZcAkKr6W9P38NYjSKJqj9owoOjl8%2Fj93AtHBTo1vfdZH%2FYp14g%2BOYSjaOtAex4B1JZ3TaofZpn3ETNlxibOG%2Bo8r1wYEt0JqYbbTx9lualMdMiq7As95COXXVz6qW7NDvIKXhZvt8%2BlALdWoq1Fq1%2BdQfzRnLU7gKdlK8i6DcFF%2BQlyqNB14DjyHA6%2FxUqYI%2Ft0qrGsJhUSLXCho7S308SDWbiT1JgsgqbhgEIccrkyDBGrgNW8sDP3O8Z7DUsgJCOw15dpdUjKd3df9f8q7VShHEGi2QqaoRcswq9nqpAY6tAKvG7qKgffJG8B14XOvIjs1%2ByMKE25DkC%2FDAFDiIElq9OkaW2n8a4PefEq%2B6GoF64LIWCNQGeYPCXuxzF7JXLPFnXRwieKpnXYR0RfeyhwrR19IKas9hNug5SFeg1QsBo8cpYvarozDZBD3AWO20YZL1GCDkK0%2BZ7ayiLBn%2BUDQSOwNhNKiAglj3QpqfAa6XZWMIfYP6IfouibkscTLjKEE%2F7eNDxdKiK0%2FNbWKEuGyFAhzhPem7Wc%2FUOADY3Qf3H%2B84bcXTLGmE%2FC7WIBr%2B72snbKJ54XwoOASGNAV07OxLwQZjlh8RCZPmUU87W6pJ8HNiVbuTFKkB7XhmE1le6Fk78WQAD6P3xnuRq4n4x0l72vAL9NHIpZZgojkSJOklDcnxMXtXO2HqR07VBvwk%2BUgc5Tj9g%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230627T103731Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAZEXCRR5WUGQJUP4O%2F20230627%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Signature=7f48d23c7426066892b022727d82ff256e9811b818cae5ed7520453bb8881c86",
    "https://rt-test-bucket-1.s3.ap-southeast-1.amazonaws.com/First%20Words%20of%20Imam%20Ali%20_%20%23ThaqlainShorts.mp4?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEPL%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDmFwLXNvdXRoZWFzdC0xIkYwRAIgOYxggeyCMxDmj%2B7qyz7kKYrqOZos9gmApd4woMMP6QcCIAMazHzDg%2BE7M9AtOmsaN8vV%2F91GXyra2UNUxYlf4hzAKuQCCFsQABoMNjI4NjE0MDc0MjIxIgypj34BgEnlhh4SzCUqwQIJV2816IxUAGbUsTt3oX0krcCC4I6xYC1F9oA4H5UinZuUCqaXGWwzoZonigjqZbVi6S55EjseZJ7SPEPIep9UFCXscAN6i0IiWXexKgrrkhy3y3oAmEi2cjt%2BlElmiHtINdAfAoC1ZcAkKr6W9P38NYjSKJqj9owoOjl8%2Fj93AtHBTo1vfdZH%2FYp14g%2BOYSjaOtAex4B1JZ3TaofZpn3ETNlxibOG%2Bo8r1wYEt0JqYbbTx9lualMdMiq7As95COXXVz6qW7NDvIKXhZvt8%2BlALdWoq1Fq1%2BdQfzRnLU7gKdlK8i6DcFF%2BQlyqNB14DjyHA6%2FxUqYI%2Ft0qrGsJhUSLXCho7S308SDWbiT1JgsgqbhgEIccrkyDBGrgNW8sDP3O8Z7DUsgJCOw15dpdUjKd3df9f8q7VShHEGi2QqaoRcswq9nqpAY6tAKvG7qKgffJG8B14XOvIjs1%2ByMKE25DkC%2FDAFDiIElq9OkaW2n8a4PefEq%2B6GoF64LIWCNQGeYPCXuxzF7JXLPFnXRwieKpnXYR0RfeyhwrR19IKas9hNug5SFeg1QsBo8cpYvarozDZBD3AWO20YZL1GCDkK0%2BZ7ayiLBn%2BUDQSOwNhNKiAglj3QpqfAa6XZWMIfYP6IfouibkscTLjKEE%2F7eNDxdKiK0%2FNbWKEuGyFAhzhPem7Wc%2FUOADY3Qf3H%2B84bcXTLGmE%2FC7WIBr%2B72snbKJ54XwoOASGNAV07OxLwQZjlh8RCZPmUU87W6pJ8HNiVbuTFKkB7XhmE1le6Fk78WQAD6P3xnuRq4n4x0l72vAL9NHIpZZgojkSJOklDcnxMXtXO2HqR07VBvwk%2BUgc5Tj9g%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230627T103716Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAZEXCRR5WUGQJUP4O%2F20230627%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Signature=5de7037d8e484c79cedbce0ce2a7d77c66582de45116a282612fdd28d8126034",
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
                      'AWS',
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
