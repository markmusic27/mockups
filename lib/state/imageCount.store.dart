import 'package:mobx/mobx.dart';

part 'imageCount.store.g.dart';

class ImageCountStore extends _ImageCountStore with _$ImageCountStore {}

abstract class _ImageCountStore with Store {
  @observable
  int imageCount = 0;

  @action
  void increase() => imageCount++;

  @action
  void decrease() => imageCount--;
}
