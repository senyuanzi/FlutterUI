//作用域函数

extension ScopeEx<T> on T {
  T also(Function(T it) function) {
    function(this);
    return this;
  }

  R let<R>(R Function(T it) function) {
    return function(this);
  }
}
