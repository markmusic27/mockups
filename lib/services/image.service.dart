import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageService {
  final List<String> _urls = [
    'https://download1641.mediafire.com/oix8smwj2dqg/5n8uo84sge6ykdl/1.png',
    'https://download1581.mediafire.com/jwmbwqcqpvxg/si57hvukr84zudg/2.png',
  ];

  int get length => _urls.length;

  static ImageProvider display(int i) => AssetImage('assets/mockups/$i.png');

  void download(int i) => launch(_urls[i]);
}
