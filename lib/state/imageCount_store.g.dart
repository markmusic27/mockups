// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageCount_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImagecountStore on _ImagecountStore, Store {
  final _$imageCountAtom = Atom(name: '_ImagecountStore.imageCount');

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

  final _$_ImagecountStoreActionController =
      ActionController(name: '_ImagecountStore');

  @override
  void increment() {
    final _$actionInfo = _$_ImagecountStoreActionController.startAction(
        name: '_ImagecountStore.increment');
    try {
      return super.increment();
    } finally {
      _$_ImagecountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageCount: ${imageCount}
    ''';
  }
}
