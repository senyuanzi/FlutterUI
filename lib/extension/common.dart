extension StringEx on String {
  double toDouble() {
    return double.parse(this);
  }

  int toInt() {
    return int.parse(this);
  }

  bool isMobile() {
    return RegExp(
            r'^((13[0-9])|(14[5,7,9])|(15[^4])|(18[0-9])|(17[0,1,3,5,6,7,8])|(19)[0-9])\d{8}$')
        .hasMatch(this);
  }
}

extension ObjectEx on Object? {
  bool isNullOrEmpty() {
    if (this is String) {
      return (this as String).isEmpty;
    } else if (this is Iterable) {
      return (this as Iterable).isEmpty;
    }
    return this == null;
  }
}

extension BoolEx on bool {
  bool not() {
    return !this;
  }

  bool and(bool val) {
    return this && val;
  }

  bool or(bool val) {
    return this || val;
  }
}
