// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageCount.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImageCountStore on _ImageCountStore, Store {
  final _$imageCountAtom = Atom(name: '_ImageCountStore.imageCount');

  @override
  int get imageCount {
    _$imageCountAtom.reportRead();
    return super.imageCount;
  }

  @override
  set imageCount(int value) {
    _$imageCountAtom.reportWrite(value, super.imageCount, () {
      super.imageCount = value;
    });
  }

  final _$_ImageCountStoreActionController =
      ActionController(name: '_ImageCountStore');

  @override
  void increase() {
    final _$actionInfo = _$_ImageCountStoreActionController.startAction(
        name: '_ImageCountStore.increase');
    try {
      return super.increase();
    } finally {
      _$_ImageCountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrease() {
    final _$actionInfo = _$_ImageCountStoreActionController.startAction(
        name: '_ImageCountStore.decrease');
    try {
      return super.decrease();
    } finally {
      _$_ImageCountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageCount: ${imageCount}
    ''';
  }
}
