import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageService {
  final List<String> _urls = [
    'https://drive.google.com/file/d/1_J11d4twcKMbR9IYmgdLwOiiUaGwDva8/view?usp=sharing',
    'https://drive.google.com/file/d/1eL1_AHsDTGqmZlVpHRNopi99tWk_9Ui-/view?usp=sharing',
    "https://drive.google.com/file/d/1EW43NFNVrKtIYDZtv8m8Pio61Ms5JiQ1/view?usp=sharing"
  ];

  int get length => _urls.length;

  static ImageProvider display(int i) => AssetImage('assets/mockups/$i.png');

  void download(int i) => launch(_urls[i]);
}
