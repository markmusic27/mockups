import 'dart:math';

import 'package:mobx/mobx.dart';

part 'imageCount_store.g.dart';

class ImagecountStore extends _ImagecountStore with _$ImagecountStore {}

abstract class _ImagecountStore with Store {
  @observable
  int imageCount = Random().nextInt(99);

  @action
  void increment() {
    imageCount = imageCount + 1;
  }
}
