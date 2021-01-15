import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageService {
  final List<String> _urls = [];

  static ImageProvider display(int i) => AssetImage('assets/mockups/$i.png');

  void download(int i) => launch(_urls[i]);
}
